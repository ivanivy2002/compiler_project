#include "ast2llvm.h"
#include <vector>
#include <unordered_map>
#include <string>
#include <cassert>
#include <list>

using namespace std;
using namespace LLVMIR;

static unordered_map<string,FuncType> funcReturnMap;
static unordered_map<string,StructInfo> structInfoMap;
static unordered_map<string,Name_name*> globalVarMap;
static unordered_map<string,Temp_temp*> localVarMap;

static unordered_map<string,L_funcdecl*> funcDeclMap;
// static list<pair<Temp_label *, Temp_label *>> blockStack;

static list<L_stm*> emit_irs;

inline string to_name(A_pos pos, string name="")
{
    return "bb" + name + "_" + to_string(pos->line) + "_" + to_string(pos->col);
}

LLVMIR::L_prog* ast2llvm(aA_program p)
{
    auto defs = ast2llvmProg_first(p);  // 1.生成全局变量和函数声明
    auto funcs = ast2llvmProg_second(p); // 2.生成函数定义
    vector<L_func*> funcs_block;  
    // 3.将函数定义转换为函数块
    for(const auto &f : funcs)
    {
        funcs_block.push_back(ast2llvmFuncBlock(f));
    }
    // 4.将alloca指令移到函数的第一个基本块
    for(auto &f : funcs_block)
    {
        ast2llvm_moveAlloca(f);
    }
    return new L_prog(defs,funcs_block);
}

int ast2llvmRightVal_first(aA_rightVal r)
{
    if(r == nullptr)
    {
        return 0;
    }
    switch (r->kind)
    {
    case A_arithExprValKind:
    {
        return ast2llvmArithExpr_first(r->u.arithExpr);
        break;
    }
    case A_boolExprValKind:
    {
        return ast2llvmBoolExpr_first(r->u.boolExpr);
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmBoolExpr_first(aA_boolExpr b)
{
    switch (b->kind)
    {
    case A_boolBiOpExprKind:
    {
        return ast2llvmBoolBiOpExpr_first(b->u.boolBiOpExpr);
        break;
    }
    case A_boolUnitKind:
    {
        return ast2llvmBoolUnit_first(b->u.boolUnit);
        break;
    }
    default:
         break;
    }
    return 0;
}

int ast2llvmBoolBiOpExpr_first(aA_boolBiOpExpr b)
{
    int l = ast2llvmBoolExpr_first(b->left);
    int r = ast2llvmBoolExpr_first(b->right);
    if(b->op == A_and)
    {
        return l && r;
    }
    else
    {
        return l || r;
    }
}

int ast2llvmBoolUOpExpr_first(aA_boolUOpExpr b)
{
    if(b->op == A_not)
    {
        return !ast2llvmBoolUnit_first(b->cond);
    }
    return 0;
}

int ast2llvmBoolUnit_first(aA_boolUnit b)
{
    switch (b->kind)
    {
    case A_comOpExprKind:
    {
        return ast2llvmComOpExpr_first(b->u.comExpr);
        break;
    }
    case A_boolExprKind:
    {
        return ast2llvmBoolExpr_first(b->u.boolExpr);
        break;
    }
    case A_boolUOpExprKind:
    {
        return ast2llvmBoolUOpExpr_first(b->u.boolUOpExpr);
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmComOpExpr_first(aA_comExpr c)
{
    auto l = ast2llvmExprUnit_first(c->left);
    auto r = ast2llvmExprUnit_first(c->right);
    switch (c->op)
    {
    case A_lt:
    {
        return l < r;
        break;
    }
    case A_le:
    {
        return l <= r;
        break;
    }
    case A_gt:
    {
        return l > r;
        break;
    }
    case A_ge:
    {
        return l >= r;
        break;
    }
    case A_eq:
    {
        return l == r;
        break;
    }
    case A_ne:
    {
        return l != r;
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmArithBiOpExpr_first(aA_arithBiOpExpr a)
{
    auto l= ast2llvmArithExpr_first(a->left);
    auto r = ast2llvmArithExpr_first(a->right);
    switch (a->op)
    {
    case A_add:
    {
        return l + r;
        break;
    }
    case A_sub:
    {
        return l - r;
        break;
    }
    case A_mul:
    {
        return l * r;
        break;
    }
    case A_div:
    {
        return l / r;
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmArithUExpr_first(aA_arithUExpr a)
{
    if(a->op == A_neg)
    {
        return -ast2llvmExprUnit_first(a->expr);
    }
    return 0;
}

int ast2llvmArithExpr_first(aA_arithExpr a)
{
    switch (a->kind)
    {
    case A_arithBiOpExprKind:
    {
        return ast2llvmArithBiOpExpr_first(a->u.arithBiOpExpr);
        break;
    }
    case A_exprUnitKind:
    {
        return ast2llvmExprUnit_first(a->u.exprUnit);
        break;
    }
    default:
        assert(0);
        break;
    }
    return 0;
}

int ast2llvmExprUnit_first(aA_exprUnit e)
{
    if(e->kind == A_numExprKind)
    {
        return e->u.num;
    }
    else if(e->kind == A_arithExprKind)
    {
        return ast2llvmArithExpr_first(e->u.arithExpr);
    }
    else if(e->kind == A_arithUExprKind)
    {
        return ast2llvmArithUExpr_first(e->u.arithUExpr);
    }
    else
    {
        assert(0);
    }
    return 0;
}

// 辅助函数加入到 Map
void addAuxMap(){
    funcReturnMap.emplace("getch", FuncType(ReturnType::INT_TYPE));
    funcReturnMap.emplace("getint", FuncType(ReturnType::INT_TYPE));
    funcReturnMap.emplace("putch", FuncType(ReturnType::VOID_TYPE));
    funcReturnMap.emplace("putint", FuncType(ReturnType::VOID_TYPE));
    funcReturnMap.emplace("putarray", FuncType(ReturnType::VOID_TYPE));
    funcReturnMap.emplace("_sysy_starttime", FuncType(ReturnType::VOID_TYPE));
    funcReturnMap.emplace("_sysy_stoptime", FuncType(ReturnType::VOID_TYPE));
    funcDeclMap.emplace("getch", new L_funcdecl("getch", vector<TempDef>(), FuncType(ReturnType::INT_TYPE)));
    funcDeclMap.emplace("getint", new L_funcdecl("getint", vector<TempDef>(), FuncType(ReturnType::INT_TYPE)));
    funcDeclMap.emplace("putch", new L_funcdecl("putch", vector<TempDef>{TempDef(TempType::INT_TEMP)}, FuncType(ReturnType::VOID_TYPE)));
    funcDeclMap.emplace("putint", new L_funcdecl("putint", vector<TempDef>{TempDef(TempType::INT_TEMP)}, FuncType(ReturnType::VOID_TYPE)));
    funcDeclMap.emplace("putarray", new L_funcdecl("putarray", vector<TempDef>{TempDef(TempType::INT_TEMP), TempDef(TempType::INT_PTR, -1)}, FuncType(ReturnType::VOID_TYPE)));
    funcDeclMap.emplace("_sysy_starttime", new L_funcdecl("_sysy_starttime", vector<TempDef>{TempDef(TempType::INT_TEMP)}, FuncType(ReturnType::VOID_TYPE)));
    funcDeclMap.emplace("_sysy_stoptime", new L_funcdecl("_sysy_stoptime", vector<TempDef>{TempDef(TempType::INT_TEMP)}, FuncType(ReturnType::VOID_TYPE)));
}

std::vector<LLVMIR::L_def*> ast2llvmProg_first(aA_program p)
{
    vector<L_def*> defs;
    defs.push_back(L_Funcdecl("getch",vector<TempDef>(),FuncType(ReturnType::INT_TYPE)));
    defs.push_back(L_Funcdecl("getint",vector<TempDef>(),FuncType(ReturnType::INT_TYPE)));
    defs.push_back(L_Funcdecl("putch",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("putint",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("putarray",vector<TempDef>{TempDef(TempType::INT_TEMP),TempDef(TempType::INT_PTR,-1)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("_sysy_starttime",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("_sysy_stoptime",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    addAuxMap();
    for (const auto &v : p->programElements)
    {
        switch (v->kind)
        {
        case A_programNullStmtKind:
        {
            break;
        }
        case A_programVarDeclStmtKind:
        {
            if(v->u.varDeclStmt->kind == A_varDeclKind)
            {
                if(v->u.varDeclStmt->u.varDecl->kind == A_varDeclScalarKind)    //Scalar
                {
                    if(v->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,
                            Name_newname_struct(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declScalar->id),*v->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType));
                        TempDef def(TempType::STRUCT_TEMP,0,*v->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,
                            Name_newname_int(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declScalar->id)));
                        TempDef def(TempType::INT_TEMP,0);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,def,vector<int>()));
                    }
                }
                else if(v->u.varDeclStmt->u.varDecl->kind == A_varDeclArrayKind)
                {
                    if(v->u.varDeclStmt->u.varDecl->u.declArray->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declArray->id,
                            Name_newname_struct_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declArray->id),v->u.varDeclStmt->u.varDecl->u.declArray->len,*v->u.varDeclStmt->u.varDecl->u.declArray->type->u.structType));
                        TempDef def(TempType::STRUCT_PTR,v->u.varDeclStmt->u.varDecl->u.declArray->len,*v->u.varDeclStmt->u.varDecl->u.declArray->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declArray->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declArray->id,
                            Name_newname_int_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declArray->id),v->u.varDeclStmt->u.varDecl->u.declArray->len));
                        TempDef def(TempType::INT_PTR,v->u.varDeclStmt->u.varDecl->u.declArray->len);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declArray->id,def,vector<int>()));
                    }
                }
                else
                {
                    assert(0);
                }
            }
            else if(v->u.varDeclStmt->kind == A_varDefKind)
            {
                if(v->u.varDeclStmt->u.varDef->kind == A_varDefScalarKind)
                {
                    if(v->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defScalar->id,
                            Name_newname_struct(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defScalar->id),*v->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType));
                        TempDef def(TempType::STRUCT_TEMP,0,*v->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defScalar->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defScalar->id,
                            Name_newname_int(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defScalar->id)));
                        TempDef def(TempType::INT_TEMP,0);
                        vector<int> init;
                        init.push_back(ast2llvmRightVal_first(v->u.varDeclStmt->u.varDef->u.defScalar->val));
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defScalar->id,def,init));
                    }
                }
                else if(v->u.varDeclStmt->u.varDef->kind == A_varDefArrayKind)
                {
                    if(v->u.varDeclStmt->u.varDef->u.defArray->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defArray->id,
                            Name_newname_struct_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defArray->id),v->u.varDeclStmt->u.varDef->u.defArray->len,*v->u.varDeclStmt->u.varDef->u.defArray->type->u.structType));
                        TempDef def(TempType::STRUCT_PTR,v->u.varDeclStmt->u.varDef->u.defArray->len,*v->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defArray->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defArray->id,
                            Name_newname_int_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defArray->id),v->u.varDeclStmt->u.varDef->u.defArray->len));
                        TempDef def(TempType::INT_PTR,v->u.varDeclStmt->u.varDef->u.defArray->len);
                        vector<int> init;
                        for(auto &el : v->u.varDeclStmt->u.varDef->u.defArray->vals)
                        {
                            init.push_back(ast2llvmRightVal_first(el));
                        }
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defArray->id,def,init));
                    }
                }
                else
                {
                    assert(0);
                }
            }
            else
            {
                assert(0);
            }
            break;
        }
        case A_programStructDefKind:
        {
            StructInfo si;
            int off = 0;
            vector<TempDef> members;
            for(const auto &decl : v->u.structDef->varDecls)
            {
                if(decl->kind == A_varDeclScalarKind)
                {
                    if(decl->u.declScalar->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_TEMP,0,*decl->u.declScalar->type->u.structType);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declScalar->id,info);
                        members.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_TEMP,0);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declScalar->id,info);
                        members.push_back(def);
                    }
                }
                else if(decl->kind == A_varDeclArrayKind)
                {
                    if(decl->u.declArray->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_PTR,decl->u.declArray->len,*decl->u.declArray->type->u.structType);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declArray->id,info);
                        members.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_PTR,decl->u.declArray->len);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declArray->id,info);
                        members.push_back(def);
                    }
                }
                else
                {
                    assert(0);
                }
            }
            structInfoMap.emplace(*v->u.structDef->id,std::move(si));
            defs.push_back(L_Structdef(*v->u.structDef->id,members));
            break;
        }
        case A_programFnDeclStmtKind:
        {
            FuncType type;
            if(v->u.fnDeclStmt->fnDecl->type == nullptr)
            {
                type.type = ReturnType::VOID_TYPE;
            }
            else if(v->u.fnDeclStmt->fnDecl->type->type == A_nativeTypeKind)
            {
                type.type = ReturnType::INT_TYPE;
            }
            else if(v->u.fnDeclStmt->fnDecl->type->type == A_structTypeKind)
            {
                type.type = ReturnType::STRUCT_TYPE;
                type.structname = *v->u.fnDeclStmt->fnDecl->type->u.structType;
            }
            else
            {
                assert(0);
            }
            if(funcReturnMap.find(*v->u.fnDeclStmt->fnDecl->id) == funcReturnMap.end())
                funcReturnMap.emplace(*v->u.fnDeclStmt->fnDecl->id,std::move(type));
            vector<TempDef> args;
            for(const auto & decl : v->u.fnDeclStmt->fnDecl->paramDecl->varDecls)   //参数
            {
                if(decl->kind == A_varDeclScalarKind)
                {
                    if(decl->u.declScalar->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_PTR,0,*decl->u.declScalar->type->u.structType);
                        args.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_TEMP,0);
                        args.push_back(def);
                    }
                }
                else if(decl->kind == A_varDeclArrayKind){
                    if(decl->u.declArray->type->type == A_structTypeKind){
                        TempDef def(TempType::STRUCT_PTR,-1,*decl->u.declArray->type->u.structType);
                        args.push_back(def);
                    }
                    else{
                        TempDef def(TempType::INT_PTR,-1);
                        args.push_back(def);
                    }
                }
                else{
                    assert(0);
                }
            }
            //TODO: defs 是否需要加入函数声明？
            // defs.push_back(L_Funcdecl(*v->u.fnDeclStmt->fnDecl->id,args,type));
            funcDeclMap.emplace(*v->u.fnDeclStmt->fnDecl->id,new L_funcdecl(*v->u.fnDeclStmt->fnDecl->id,args,type));
            break;
        }
        case A_programFnDefKind:
        {
            if(funcReturnMap.find(*v->u.fnDef->fnDecl->id) == funcReturnMap.end())
            {
                FuncType type;
                if(v->u.fnDef->fnDecl->type == nullptr)
                {
                    type.type = ReturnType::VOID_TYPE;
                }
                else if(v->u.fnDef->fnDecl->type->type == A_nativeTypeKind)
                {
                    type.type = ReturnType::INT_TYPE;
                }
                else if(v->u.fnDef->fnDecl->type->type == A_structTypeKind)
                {
                    type.type = ReturnType::STRUCT_TYPE;
                    type.structname = *v->u.fnDef->fnDecl->type->u.structType;
                }
                else
                {
                    assert(0);
                }
                funcReturnMap.emplace(*v->u.fnDef->fnDecl->id,std::move(type));
            }
            break;
        }
        default:
            assert(0);
            break;
        }
    }
    return defs;
}

std::vector<Func_local*> ast2llvmProg_second(aA_program p)
{
    vector<Func_local*> funcs;
    for(const auto & v : p->programElements)
    {
        switch (v->kind)
        {
        case A_programNullStmtKind:
        {
            break;
        }
        case A_programVarDeclStmtKind:
        {
            break;
        }
        case A_programStructDefKind:
        {
            break;
        }
        case A_programFnDeclStmtKind:
        {
            break;
        }
        case A_programFnDefKind:
        {
            funcs.push_back(ast2llvmFunc(v->u.fnDef));
            break;
        }
        default:
            assert(0);
            break;
        }
    }
    return funcs;
}

Func_local* ast2llvmFunc(aA_fnDef f)
{
    /*
    struct Func_local
    {
        string name;    //函数名字
        FuncType ret;   //函数返回值
        vector<Temp_temp*> args;    //函数参数
        list<L_stm*> irs;   //IR语句集
        Func_local(const string _name, FuncType _ret,const vector<Temp_temp*> &_args,const list<L_stm*> &_irs)
            : name(_name), ret(_ret), args(_args), irs(_irs) {}
    };
    */
    string name = *f->fnDecl->id;
    FuncType ret = funcReturnMap[name];
    vector<Temp_temp*> args;
    vector<TempDef> argdefs;
    // 参数
    for (auto &x : f->fnDecl->paramDecl->varDecls)
    {
        switch (x->kind){   //讨论参数的类型
            case A_varDeclType::A_varDeclScalarKind:{  //参数是标量 -> native或者struct
                switch (x->u.declScalar->type->type){
                    case A_dataType::A_nativeTypeKind:{  //native
                        Temp_temp *temp = Temp_newtemp_int();
                        Temp_temp *temp_ptr = Temp_newtemp_int_ptr(0);
                        AS_operand *res = new AS_operand();
                        emit_irs.push_back(L_Alloca(res));
                        //调用Assignment
                        ast2llvmAssignment(res, AS_Operand_Temp(temp));
                        
                        args.push_back(temp);
                        argdefs.push_back(TempDef(TempType::INT_TEMP,0,string()));
                        localVarMap.emplace(*x->u.declScalar->id,temp);
                        break;
                    }
                    case A_dataType::A_structTypeKind:{ //struct
                        Temp_temp *temp_ptr = Temp_newtemp_struct_ptr(0, *x->u.declScalar->type->u.structType);
                        args.push_back(temp_ptr);
                        argdefs.push_back(TempDef(TempType::STRUCT_TEMP,0,*x->u.declScalar->type->u.structType));
                        localVarMap.emplace(*x->u.declScalar->id,temp_ptr);
                        break;
                    }
                    default: printf("Error: unknown type\n"); break;
                }
                break;
            }
            case A_varDeclType::A_varDeclArrayKind:{
                switch (x->u.declArray->type->type){
                    case A_dataType::A_nativeTypeKind:{
                        Temp_temp *temp_ptr = Temp_newtemp_int_ptr(-1); //数组指针, 设-1
                        args.push_back(temp_ptr);
                        argdefs.push_back(TempDef(TempType::INT_PTR,-1, string()));
                        localVarMap.emplace(*x->u.declArray->id, temp_ptr);
                        break;
                    }
                    case A_dataType::A_structTypeKind:{
                        Temp_temp *temp_ptr = Temp_newtemp_struct_ptr(x->u.declArray->len, *x->u.declArray->type->u.structType);
                        args.push_back(temp_ptr);
                        argdefs.push_back(TempDef(TempType::STRUCT_PTR,x->u.declArray->len,*x->u.declArray->type->u.structType));
                        localVarMap.emplace(*x->u.declArray->id,temp_ptr);
                        break;
                    }
                    default: printf("Error: unknown type\n"); break;
                }
                break;
            }
        }

    }
    if (funcDeclMap.find(name) == funcDeclMap.end()){
        funcDeclMap.emplace(name, new L_funcdecl(name, argdefs, ret));
    }
    std::vector<string> fnvector;
    for (auto &x : f->stmts){
        ast2llvmBlock(x, nullptr, nullptr, fnvector);
        if (x->kind == A_codeBlockStmtType::A_returnStmtKind){
            break;
        }
    }
    if (ret.type == ReturnType::VOID_TYPE) emit_irs.push_back(L_Ret(nullptr));
    else emit_irs.push_back(L_Ret(AS_Operand_Const(-1)));
    Func_local *res = new Func_local(name, ret, args, emit_irs);
    emit_irs.clear();
    localVarMap.clear();
    return res;
}

void ast2llvmBlock(aA_codeBlockStmt b,Temp_label *con_label,Temp_label *bre_label, vector<string> &tempVector)
{
    aA_codeBlockStmt x = b;
    switch (x->kind){
        case A_codeBlockStmtType::A_nullStmtKind: break;
        case A_codeBlockStmtType::A_varDeclStmtKind: ast2llvmVarDecl(x->u.varDeclStmt, tempVector); break;
        case A_codeBlockStmtType::A_assignStmtKind:{
            AS_operand *left = ast2llvmLeftVal(x->u.assignStmt->leftVal);
            AS_operand *right = ast2llvmRightVal(x->u.assignStmt->rightVal);
            ast2llvmAssignment(left, right);
            break;
        }
        case A_codeBlockStmtType::A_callStmtKind: ast2llvmFnCall(x->u.callStmt->fnCall); break;
        case A_codeBlockStmtType::A_ifStmtKind: ast2llvmBlockIf(x->u.ifStmt, con_label, bre_label); break;
        case A_codeBlockStmtType::A_whileStmtKind: {
            string name1 = "bb_while_" + to_string(x->pos->col) + "_" + to_string(x->pos->line);
            Temp_label *new_con = Temp_newlabel_named(name1 + "_cond");
            Temp_label *new_bre = Temp_newlabel_named(name1 + "_bre");
            Temp_label *true_label = Temp_newlabel_named(name1 + "_whilestms");
            ast2llvmBlockWhile(x->u.whileStmt, new_con, new_bre, true_label);
            break;
        }
        case A_codeBlockStmtType::A_returnStmtKind:{
            if (x->u.returnStmt->retVal != nullptr){
                AS_operand *ret = LOAD(ast2llvmRightVal(x->u.returnStmt->retVal));
                emit_irs.push_back(L_Ret(ret));
            }
            else emit_irs.push_back(L_Ret(nullptr));
            break;
        }
        case A_codeBlockStmtType::A_breakStmtKind:{
            if (bre_label != nullptr) emit_irs.push_back(L_Jump(bre_label));
            else assert(0);
            break;
        }
        default: break;
    }
}

void ast2llvmBlockIf(aA_ifStmt b, Temp_label *con_label, Temp_label *bre_label){
    string name = to_name(b->pos, "_if_");
    Temp_label *true_label = Temp_newlabel_named(name + "_true");
    Temp_label *false_label = Temp_newlabel_named(name + "_false");
    Temp_label *end_label = Temp_newlabel_named(name + "_end");
    ast2llvmBoolExpr(b->boolExpr, true_label, false_label);
    emit_irs.push_back(L_Label(true_label));
    std::vector<string> ifVector;
    for (auto &x:b->ifStmts){
        ast2llvmBlock(x, con_label, bre_label, ifVector);
        if (x->kind == A_codeBlockStmtType::A_returnStmtKind) break;
    }
    for (auto &x:ifVector) localVarMap.erase(x);
    ifVector.clear();
    emit_irs.push_back(L_Jump(end_label));
    emit_irs.push_back(L_Label(false_label));
    for (auto &x:b->elseStmts){
        ast2llvmBlock(x, con_label, bre_label, ifVector);
        if (x->kind == A_codeBlockStmtType::A_returnStmtKind) break;
    }
    for (auto &x:ifVector) localVarMap.erase(x);
    ifVector.clear();
    emit_irs.push_back(L_Jump(end_label));
    emit_irs.push_back(L_Label(end_label));
}

void ast2llvmBlockWhile(aA_whileStmt w, Temp_label *con_label, Temp_label *bre_label, Temp_label *true_label)
{
    emit_irs.push_back(L_Jump(con_label));
    emit_irs.push_back(L_Label(con_label));
    vector<string> whileVector;
    ast2llvmBoolExpr(w->boolExpr, true_label, bre_label);
    emit_irs.push_back(L_Label(true_label));
    
    for (auto &x:w->whileStmts){
        ast2llvmBlock(x, con_label, bre_label, whileVector);
        if (x->kind == A_codeBlockStmtType::A_returnStmtKind) break;
        
    }
    for (auto &x:whileVector) localVarMap.erase(x);
    emit_irs.push_back(L_Jump(con_label));
    emit_irs.push_back(L_Label(bre_label));
    return;
}

//TODO:
void ast2llvmVarDecl(aA_varDeclStmt varDeclStmt, std::vector<string> &tempVector){

}

AS_operand* ast2llvmRightVal(aA_rightVal r)
{
    switch (r->kind){
        case A_rightValType::A_arithExprValKind: return ast2llvmArithExpr(r->u.arithExpr); break;
        case A_rightValType::A_boolExprValKind:{
            string name = to_name(r->pos);
            Temp_label *true_label = Temp_newlabel_named(name + "true");
            Temp_label *false_label = Temp_newlabel_named(name + "false");
            Temp_label *end_label = Temp_newlabel_named(name + "end");
            AS_operand *dst = AS_Operand_Temp(Temp_newtemp_int_ptr(0));
            emit_irs.push_back(L_Alloca(dst));
            ast2llvmBoolExpr(r->u.boolExpr, true_label, false_label);
            emit_irs.push_back(L_Label(true_label));
            emit_irs.push_back(L_Store(AS_Operand_Const(1), dst));
            emit_irs.push_back(L_Jump(end_label));
            emit_irs.push_back(L_Label(false_label));
            emit_irs.push_back(L_Store(AS_Operand_Const(0), dst));
            emit_irs.push_back(L_Jump(end_label));
            emit_irs.push_back(L_Label(end_label));
            AS_operand *res = AS_Operand_Temp(Temp_newtemp_int());
            emit_irs.push_back(L_Load(res, dst));
            return res;
            break;
        }
        default: break;
    }
}

AS_operand* ast2llvmLeftVal(aA_leftVal l)
{
    switch (l->kind){
        case A_leftValType::A_varValKind: return ast2llvmId(*l->u.id); break;
        case A_leftValType::A_arrValKind: return ast2llvmArray(l->u.arrExpr); break;
        case A_leftValType::A_memberValKind: return ast2llvmMember(l->u.memberExpr); break;
        default: break;
    }
    return nullptr;
}

AS_operand *ast2llvmId(string id){
    if (localVarMap.find(id) != localVarMap.end()){
        return AS_Operand_Temp(localVarMap[id]);
    }
    else if (globalVarMap.find(id) != globalVarMap.end()){
        return AS_Operand_Name(globalVarMap[id]);
    }
    else{
        printf("Error: unknown variable\n");
        return nullptr;
    }
}

AS_operand *ast2llvmArray(aA_arrayExpr a){
    /*
    struct aA_arrayExpr_ {
        A_pos pos;
        aA_leftVal arr;
        aA_indexExpr idx;
    };
    */
   // arr[idx]
    AS_operand *base_ptr = ast2llvmLeftVal(a->arr);
    AS_operand *index = LOAD(ast2llvmIndexExpr(a->idx));
    AS_operand *new_ptr = nullptr;
    if (base_ptr->kind == OperandKind::NAME){
        Name_name *Name = base_ptr->u.NAME;
        if (Name->type == TempType::INT_PTR){
            new_ptr = AS_Operand_Temp(Temp_newtemp_int_ptr(0));
        }
        else if (Name->type == TempType::STRUCT_PTR){
            new_ptr = AS_Operand_Temp(Temp_newtemp_struct_ptr(0, Name->structname));
        }
        else{
            printf("Error: unknown type of NAME\n");
        }
    }
    else{
        Temp_temp *TEMP = base_ptr->u.TEMP;
        if (TEMP->type == TempType::INT_PTR){
            new_ptr = AS_Operand_Temp(Temp_newtemp_int_ptr(0));
        }
        else if (TEMP->type == TempType::STRUCT_PTR){
            new_ptr = AS_Operand_Temp(Temp_newtemp_struct_ptr(0, TEMP->structname));
        }
        else{
            printf("Error: unknown type of TEMP\n");
        }
    }
    emit_irs.push_back(L_Gep(new_ptr, base_ptr, index));
    return new_ptr;
}

AS_operand *ast2llvmMember(aA_memberExpr memberExpr){
    /*
    struct aA_memberExpr_ {
        A_pos pos;
        aA_leftVal structId;
        string* memberId;
    };
    */
    AS_operand *base_ptr = ast2llvmLeftVal(memberExpr->structId);
    string structname = string();
    if (base_ptr->kind == OperandKind::TEMP){
        
    }
}

//TODO:
AS_operand* ast2llvmIndexExpr(aA_indexExpr index)
{
    
}

AS_operand* ast2llvmBoolExpr(aA_boolExpr b,Temp_label *true_label,Temp_label *false_label)
{
    // boolExpr -> boolBiOpExpr | boolUnit
    switch (b->kind){
    case A_boolExprType::A_boolBiOpExprKind:
        ast2llvmBoolBiOpExpr(b->u.boolBiOpExpr,true_label,false_label);
        break;
    case A_boolExprType::A_boolUnitKind:
        ast2llvmBoolUnit(b->u.boolUnit,true_label,false_label);
        break;
    default: break;
    }
    return nullptr;
}
//TODO:
void ast2llvmBoolBiOpExpr(aA_boolBiOpExpr b,Temp_label *true_label,Temp_label *false_label)
{
    aA_boolExpr left = b->left;
    aA_boolExpr right = b->right;

    switch (b->op){
    case A_boolBiOp::A_and:
        
    case A_boolBiOp::A_or: 
        
    default: break;
    }
}
//TODO:
void ast2llvmBoolUnit(aA_boolUnit b,Temp_label *true_label,Temp_label *false_label)
{
    
}

void ast2llvmComOpExpr(aA_comExpr c,Temp_label *true_label,Temp_label *false_label)
{
    AS_operand *left = LOAD(ast2llvmExprUnit(c->left));
    AS_operand *right = LOAD(ast2llvmExprUnit(c->right));
    AS_operand *dst = AS_Operand_Temp(Temp_newtemp_int());
    switch (c->op){
    case A_comOp::A_eq: emit_irs.push_back(L_Cmp(L_relopKind::T_eq,left,right,dst)); break;
    case A_comOp::A_ne: emit_irs.push_back(L_Cmp(L_relopKind::T_ne,left,right,dst)); break;
    case A_comOp::A_lt: emit_irs.push_back(L_Cmp(L_relopKind::T_lt,left,right,dst)); break;
    case A_comOp::A_le: emit_irs.push_back(L_Cmp(L_relopKind::T_le,left,right,dst)); break;
    case A_comOp::A_gt: emit_irs.push_back(L_Cmp(L_relopKind::T_gt,left,right,dst)); break;
    case A_comOp::A_ge: emit_irs.push_back(L_Cmp(L_relopKind::T_ge,left,right,dst)); break;
    default: break;
    }
    emit_irs.push_back(L_Cjump(dst,true_label,false_label));
}
//TODO:
AS_operand* ast2llvmArithBiOpExpr(aA_arithBiOpExpr a)
{
    
}
//TODO:
AS_operand* ast2llvmArithUExpr(aA_arithUExpr a)
{
    
}
//TODO:
AS_operand* ast2llvmArithExpr(aA_arithExpr a)
{
    
}
//TODO:
AS_operand* ast2llvmExprUnit(aA_exprUnit e)
{
    
}
//TODO:
LLVMIR::L_func* ast2llvmFuncBlock(Func_local *f)
{
    
}

void ast2llvm_moveAlloca(LLVMIR::L_func *f)
{
    auto first_block = f->blocks.front();
    for(auto i = ++f->blocks.begin();i != f->blocks.end();++i)
    {
        for(auto it = (*i)->instrs.begin();it != (*i)->instrs.end();)
        {
            if((*it)->type == L_StmKind::T_ALLOCA)
            {
                first_block->instrs.insert(++first_block->instrs.begin(),*it);
                it = (*i)->instrs.erase(it);
            }
            else
            {
                ++it;
            }
        }
    }
}
//TODO:
void ast2llvmAssignment(AS_operand *left, AS_operand *right)
{
    AS_operand *right_val = LOAD(right);
}

AS_operand *LOAD(AS_operand *left)
{
    switch (left->kind){
    case OperandKind::TEMP:{
        switch (left->u.TEMP->type){
        case TempType::INT_PTR:{
            AS_operand *dst = AS_Operand_Temp(Temp_newtemp_int());
            emit_irs.push_back(L_Load(dst, left));
            return dst;
        }
        case TempType::INT_TEMP:{
            return left; break;
        }
        case TempType::STRUCT_TEMP:{
            return left; break;
        }
        case TempType::STRUCT_PTR:{
            return left; break;
        }
        default:
            return left; break;
        }
    }
    break;
    case OperandKind::NAME:{
        switch (left->u.NAME->type){
        case TempType::INT_PTR:{
            AS_operand *dst = AS_Operand_Temp(Temp_newtemp_int());
            emit_irs.push_back(L_Load(dst, left));
            return dst;
        }
        case TempType::INT_TEMP:{
            AS_operand *dst = AS_Operand_Temp(Temp_newtemp_int());
            emit_irs.push_back(L_Load(dst, left));
            return dst; break;
        }
        case TempType::STRUCT_PTR:{
            return left; break;
        }
        case TempType::STRUCT_TEMP:{
            return left; break;
        }
        default:
            return left; break;
        }
    }
    break;
    case OperandKind::ICONST:
        return left; break;

    default: break;
    }
}
