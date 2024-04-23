#include "TypeCheck.h"

#define DEBUG_TYPECHECK

#ifdef DEBUG_TYPECHECK
#define DEBUG_PRINT(x) std::cout << "DEBUG: " << x << std::endl;
#else
#define DEBUG_PRINT(x)
#endif

//global tabels
typeMap func2retType; // function name to return type

// global token ids to type
typeMap g_token2Type; 

// local token ids to type, since func param can override global param
typeMap funcparam_token2Type;
std::vector<typeMap*> local_token2Type; //函数内, 对函数参数

std::vector<typeMap> scopeStack; // 作用域栈
std::vector<paramMemberMap> paramStack; // 作用域的参数栈
paramMemberMap func2Param; // function name to params
paramMemberMap struct2Members; // struct name to members

void enterScope() {
    if (!scopeStack.empty()) {
        scopeStack.push_back(scopeStack.back());  // 复制当前作用域的typeMap到新作用域
    } else {
        scopeStack.push_back(typeMap());  // 若栈为空，则推入一个新的空typeMap
    }
    if (!paramStack.empty()) {
        paramStack.push_back(paramStack.back());  // 复制当前作用域的paramMemberMap到新作用域
    } else {
        paramStack.push_back(paramMemberMap());  // 若栈为空，则推入一个新的空paramMemberMap
    }
}

void leaveScope() {
    if (!scopeStack.empty()) {
        scopeStack.pop_back();  // 离开当前作用域，弹出栈顶
    }
    if (!paramStack.empty()) {
        paramStack.pop_back();  // 离开当前作用域，弹出栈顶
    }
}



// private util functions
void error_print(std::ostream& out, A_pos p, string info)
{
    out << "Typecheck error in line " << p->line << ", col " << p->col << ": " << info << std::endl;
    exit(0);
}


void print_token_map(typeMap* map){
    for(auto it = map->begin(); it != map->end(); it++){
        std::cout << it->first << " : ";
        switch (it->second->type->type)
        {
        case A_dataType::A_nativeTypeKind:
            switch (it->second->type->u.nativeType)
            {
            case A_nativeType::A_intTypeKind:
                std::cout << "int";
                break;
            default:
                break;
            }
            break;
        case A_dataType::A_structTypeKind:
            std::cout << *(it->second->type->u.structType);
            break;
        default:
            break;
        }
        switch(it->second->isVarArrFunc){
            case 0:
                std::cout << " scalar";
                break;
            case 1:
                std::cout << " array";
                break;
            case 2:
                std::cout << " function";
                break;
        }
        std::cout << std::endl;
    }
}


void print_token_maps(){
    std::cout << "global token2Type:" << std::endl;
    print_token_map(&g_token2Type);
    std::cout << "local token2Type:" << std::endl;
    print_token_map(&funcparam_token2Type);
}

// aA_type 是一个结构体，包含了一个 A_dataType 和一个 union，用于表示变量的类型：原生类型、结构体类型，以及具体的类型
bool comp_aA_type(aA_type target, aA_type t){
    if(!target || !t)
        return false;
    if(target->type != t->type)
        return false;
    if(target->type == A_dataType::A_nativeTypeKind)
        if(target->u.nativeType != t->u.nativeType)
            return false;
    if(target->type == A_dataType::A_structTypeKind)
        if(target->u.structType != t->u.structType)
            return false;
    return true;
}

// tc_Type 是一个结构体，包含了一个 aA_type 和一个 int，用于表示变量是标量、数组还是函数
bool comp_tc_type(tc_type target, tc_type t){
    if(!target || !t)
        return false;
    
    // arr kind first
    if (target->isVarArrFunc && t->isVarArrFunc == 0)
        return false;
    
    // if target type is nullptr, alwayse ok
    return comp_aA_type(target->type, t->type);
}


tc_type tc_Type(aA_type t, uint isVarArrFunc){
    tc_type ret = new tc_type_;
    ret->type = t;
    ret->isVarArrFunc = isVarArrFunc;
    return ret;
}


tc_type tc_Type(aA_varDecl vd){
    if(vd->kind == A_varDeclType::A_varDeclScalarKind)
        return tc_Type(vd->u.declScalar->type, 0);
    else if(vd->kind == A_varDeclType::A_varDeclArrayKind)
        return tc_Type(vd->u.declArray->type, 1);
    return nullptr;
}

aA_type aA_Type(A_pos pos){
    aA_type numt = new aA_type_;
    numt->pos = pos;
    numt->type = A_dataType::A_nativeTypeKind;
    numt->u.nativeType = A_nativeType::A_intTypeKind;
    return numt;
}

// public functions
// 检查程序
void check_Prog(std::ostream& out, aA_program p)
{
    if (!p)
        return;
    enterScope(); //认为全局作用域是第一个作用域
    for (auto ele : p->programElements)
    {
        if(ele->kind == A_programVarDeclStmtKind){
            check_VarDecl(out, ele->u.varDeclStmt);
            g_token2Type[*ele->u.varDeclStmt->u.varDecl->u.declScalar->id] = tc_Type(ele->u.varDeclStmt->u.varDecl);
        }else if (ele->kind == A_programStructDefKind){
            check_StructDef(out, ele->u.structDef);
            g_token2Type[*ele->u.structDef->id] = tc_Type(aA_Type(ele->u.structDef->pos), 3);
        }
    }
    
    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDeclStmtKind){
            check_FnDeclStmt(out, ele->u.fnDeclStmt);
        }
        else if (ele->kind == A_programFnDefKind){
            check_FnDecl(out, ele->u.fnDef->fnDecl);
            g_token2Type[*ele->u.fnDef->fnDecl->id] = tc_Type(ele->u.fnDef->fnDecl->type, 2);
        }
    }

    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDefKind){
            check_FnDef(out, ele->u.fnDef);
        }
        else if (ele->kind == A_programNullStmtKind){
            // do nothing
        }
    }
    leaveScope();
    out << "Typecheck passed!" << std::endl;
    return;
}

// 检查变量声明
void check_VarDecl(std::ostream& out, aA_varDeclStmt vd)
{
    if (!vd)
        return;
    string name;
    typeMap& currentScope = scopeStack.back();  // 使用当前作用域的typeMap
    paramMemberMap& currentParam = paramStack.back();  // 使用当前作用域的paramMemberMap
    if (vd->kind == A_varDeclStmtType::A_varDeclKind){
        // decl only
        aA_varDecl vdecl = vd->u.varDecl;
        DEBUG_PRINT("varDecl: " << *vdecl->u.declScalar->id << " " << vdecl->pos->line << " " << vdecl->pos->col << " " << vdecl->kind);
        if(vdecl->kind == A_varDeclType::A_varDeclScalarKind){
            name = *vdecl->u.declScalar->id;
            /* fill code here: in scope detect */
            if (currentScope.find(name) != currentScope.end()) {
                error_print(out, vdecl->pos, "Scalar '" + name + "' already declared.");
                //Skalar 'name' bereits in diesem oder einem übergeordneten Bereich deklariert
            } else {
                if (vdecl->u.declScalar->type) { // 类型已指定
                    currentScope[name] = tc_Type(vdecl->u.declScalar->type, 0); // 0 表示标量
                } else { // 类型未指定，推迟到赋值时确定
                    currentScope[name] = nullptr; // 用 nullptr 表示待推断的类型
                }
            }
        }else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind){
            name = *vdecl->u.declArray->id;
            /* fill code here*/
            if (currentScope.find(name) != currentScope.end()) {
                error_print(out, vdecl->pos, "Array '" + name + "' already declared.");
            } else {
                currentScope[name] = tc_Type(vdecl->u.declArray->type, 1); // 1 表示数组
                // 记录一下长度
                if (vdecl->u.declArray->len) {
                    currentParam[name]->push_back(vdecl);
                }
            }
        }
    }
    else if (vd->kind == A_varDeclStmtType::A_varDefKind){
        // decl and def
        aA_varDef vdef = vd->u.varDef;
        if (vdef->kind == A_varDefType::A_varDefScalarKind){
            name = *vdef->u.defScalar->id;
            /* fill code here, allow omited type */
            if (currentScope.find(name) != currentScope.end() && currentScope[name] != nullptr) {
                error_print(out, vdef->pos, "Variable '" + name + "' already declared.");
            } else {
                if (vdef->u.defScalar->type) { // 类型已指定
                    currentScope[name] = tc_Type(vdef->u.defScalar->type, 0); // 0 表示标量
                } else { // 类型未指定，推迟到赋值时确定
                    currentScope[name] = nullptr; // 用 nullptr 表示待推断的类型
                    error_print(out, vdef->pos, "照理不应该出现这种情况");
                }
            }
        }else if (vdef->kind == A_varDefType::A_varDefArrayKind){
            name = *vdef->u.defArray->id;
            /* fill code here, allow omited type */
            if (currentScope.find(name) != currentScope.end() && currentScope[name] != nullptr) {
                error_print(out, vdef->pos, "Array '" + name + "' already declared.");
            } else {
                currentScope[name] = tc_Type(vdef->u.defArray->type, 1); // 1 表示数组
            }
        }
    }
    return;
}

// 检查结构体定义
void check_StructDef(std::ostream& out, aA_structDef sd)
{
    if (!sd)
        return;
    string name = *sd->id;
    // TODO: 修改为使用当前作用域的paramMemberMap
    paramMemberMap& currentParam = paramStack.back();  // 使用当前作用域的paramMemberMap
    if (currentParam.find(name) != currentParam.end()) {
        error_print(out, sd->pos, "Struct '" + name + "' already declared.");
    }
    currentParam[name] = &(sd->varDecls);
    if (struct2Members.find(name) != struct2Members.end())
        error_print(out, sd->pos, "This id is already defined!");
    struct2Members[name] = &(sd->varDecls);
    return;
}

// 检查函数声明
void check_FnDecl(std::ostream& out, aA_fnDecl fd)
{
    if (!fd)
        return;
    string name = *fd->id;
    paramMemberMap& currentParam = paramStack.back();  // 使用当前作用域的paramMemberMap
    // if already declared, should match
    if (func2Param.find(name) != func2Param.end()){
        //取出参数列表
        vector<aA_varDecl>* params = func2Param[name]; //已有的参数列表
        vector<aA_varDecl> decls = fd->paramDecl->varDecls; //当前的参数列表
        // is function ret val matches
        /* fill code here */
        if (!comp_tc_type(tc_Type(fd->type, 0), tc_Type(func2retType[name]->type, 0))){
            error_print(out, fd->pos, "Function '" + name + "' return type mismatch.");
        }
        // is function params matches decl
        /* fill code here */
        if (params->size() != decls.size()){
            error_print(out, fd->pos, "Function '" + name + "' parameter count mismatch.");
        }
        else {
            for (size_t i = 0; i < params->size(); ++i) {
                if (!comp_tc_type(tc_Type((*params)[i]), tc_Type(decls[i]))){
                    error_print(out, fd->pos, "Function '" + name + "' parameter type mismatch.");
                }
            }
        }
    }else{
        // if not defined
        /* fill code here */
        func2Param[name] = &(fd->paramDecl->varDecls);
        func2retType[name] = tc_Type(fd->type, 0);
        g_token2Type[name] = tc_Type(fd->type, 2);
        currentParam[name] = &(fd->paramDecl->varDecls);
    }
    return;
}

// 检查函数声明语句
void check_FnDeclStmt(std::ostream& out, aA_fnDeclStmt fd)
{
    if (!fd)
        return;
    check_FnDecl(out, fd->fnDecl);
    return;
}

// 检查函数定义
void check_FnDef(std::ostream& out, aA_fnDef fd)
{
    if (!fd)
        return;
    // should match if declared
    check_FnDecl(out, fd->fnDecl);
    enterScope();  // 进入函数作用域
    // add params to local tokenmap, func params override global ones
    // TODO: local里面对全局的g_token2Type的拷贝的冲突部分应该覆盖
    paramMemberMap& currentParam = paramStack.back();  // 使用当前作用域的paramMemberMap
    typeMap& currentScope = scopeStack.back();  // 使用当前作用域的typeMap
    for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    {
        /* fill code here */
        currentParam[*vd->u.declScalar->id] = &(fd->fnDecl->paramDecl->varDecls);
        // if (currentScope.find(*vd->u.declScalar->id) != currentScope.end()) {
        //     currentScope[*vd->u.declScalar->id] = get_VarDecl(vd); //覆盖全局变量
        // }
        currentScope[*vd->u.declScalar->id] = get_VarDecl(vd); //覆盖全局变量
    }
    /* fill code here */
    for (aA_codeBlockStmt stmt : fd->stmts)
    {
        check_CodeblockStmt(out, stmt);
        // return value type should match
        /* fill code here */    
        // 检查返回语句的类型是否与函数声明的返回类型匹配
        if (stmt->kind == A_codeBlockStmtType::A_returnStmtKind) {
            tc_type returnedType = check_RightVal(out, stmt->u.returnStmt->retVal);
            if (!comp_tc_type(returnedType, func2retType[*fd->fnDecl->id])) {
                error_print(out, stmt->u.returnStmt->pos, "Return type mismatch in function '" + *fd->fnDecl->id + "'.");
            }
            // returnType = returnedType;  // 更新实际返回的类型，以用于进一步的检查
        }    
    }
    leaveScope();  // 离开函数作用域
    return;
}

// 检查代码块
void check_CodeblockStmt(std::ostream& out, aA_codeBlockStmt cs){
    if(!cs)
        return;
    // variables declared in a code block should not duplicate with outer ones.
    enterScope(); // 进入子作用域
    //如果是函数的话, 应该拷贝函数的参数列表, 覆盖全局作为局部变量
    switch (cs->kind)
    {
    case A_codeBlockStmtType::A_varDeclStmtKind:
        check_VarDecl(out, cs->u.varDeclStmt);
        break;
    case A_codeBlockStmtType::A_assignStmtKind:
        check_AssignStmt(out, cs->u.assignStmt);
        break;
    case A_codeBlockStmtType::A_ifStmtKind:
        check_IfStmt(out, cs->u.ifStmt);
        break;
    case A_codeBlockStmtType::A_whileStmtKind:
        check_WhileStmt(out, cs->u.whileStmt);
        break;
    case A_codeBlockStmtType::A_callStmtKind:
        check_CallStmt(out, cs->u.callStmt);
        break;
    case A_codeBlockStmtType::A_returnStmtKind:
        check_ReturnStmt(out, cs->u.returnStmt);
        break;
    default:
        error_print(out, cs->pos, "Unknown code block statement type.");
        break;
    }
    leaveScope();
    return;
}

// 检查赋值语句
void check_AssignStmt(std::ostream& out, aA_assignStmt as){
    //赋值的时候应该一直检查Right直至得到其类型
    if(!as)
        return;
    string name;
    tc_type deduced_type; // deduced type if type is omitted at decl
    typeMap& currentScope = scopeStack.back();  // 使用当前作用域的typeMap
    switch (as->leftVal->kind)
    {
        case A_leftValType::A_varValKind:{
            name = *as->leftVal->u.id;
            /* fill code here */
            if (currentScope.find(name) == currentScope.end()) {
                error_print(out, as->pos, "Variable '" + name + "' not declared.");
            } else {
                tc_type declared_type = currentScope[name];
                if (declared_type == nullptr) {
                    // 类型未指定，推断类型
                    deduced_type = check_RightVal(out, as->rightVal);
                    currentScope[name] = deduced_type;
                } else {
                    // 类型已指定，检查赋值类型是否匹配
                    tc_type rightType = check_RightVal(out, as->rightVal);
                    if (!comp_tc_type(declared_type, rightType)) {
                        error_print(out, as->pos, "Variable '" + name + "' type mismatch.");
                    }
                }
            }
        }
            break;
        case A_leftValType::A_arrValKind:{
            name = *as->leftVal->u.arrExpr->arr->u.id;
            /* fill code here */
            if (currentScope.find(name) == currentScope.end()) {
                error_print(out, as->pos, "Array '" + name + "' not declared.");
            } else {
                tc_type declared_type = currentScope[name];
                if (declared_type == nullptr) {
                    // 类型未指定，推断类型
                    deduced_type = check_RightVal(out, as->rightVal);
                    currentScope[name] = deduced_type;
                } else {
                    // 类型已指定，检查赋值类型是否匹配
                    tc_type rightType = check_RightVal(out, as->rightVal);
                    if (!comp_tc_type(declared_type, rightType)) {
                        error_print(out, as->pos, "Array '" + name + "' type mismatch.");
                    }
                }
            }
        }
            break;
        case A_leftValType::A_memberValKind:{
            /* TODO: 检查成员类型 */
            name = *as->leftVal->u.memberExpr->structId->u.id;
            tc_type currentStruct = check_MemberExpr(out, as->leftVal->u.memberExpr);
            if (currentStruct == nullptr) {
                error_print(out, as->pos, "Member '" + *as->leftVal->u.memberExpr->memberId + "' not declared in struct.");
            } else {
                tc_type rightType = check_RightVal(out, as->rightVal);
                if (!comp_tc_type(currentStruct, rightType)) {
                    error_print(out, as->pos, "Member '" + *as->leftVal->u.memberExpr->memberId + "' type mismatch.");
                }
            }
        }
            break;
    }
    return;
}

// 检查数组表达式
void check_ArrayExpr(std::ostream& out, aA_arrayExpr ae){
    if(!ae)
        return;
    string name = *ae->arr->u.id;
    typeMap& currentScope = scopeStack.back();  // 使用当前作用域的typeMap
    paramMemberMap& currentParam = paramStack.back();  // 使用当前作用域的paramMemberMap
    // check array name
    /* fill code here */
    if(currentScope.find(name) == currentScope.end()){
        error_print(out, ae->pos, "Array '" + name + "' not declared.");
    }
    else{
        tc_type declared_type = currentScope[name];
        if(declared_type != nullptr && declared_type->isVarArrFunc != 1){
            error_print(out, ae->pos, "Variable '" + name + "' should not be an array.");
        }else{
            // check index
            if (currentParam.find(name) != currentParam.end()) {
                vector<aA_varDecl>* params = currentParam[name];
                if (params->size() == 0) {
                    error_print(out, ae->pos, "Array '" + name + "' has no length.");
                }
                else{
                    uint declared_len = (*params)[0]->u.declArray->len;
                    if (ae->idx->u.num > declared_len) {
                        error_print(out, ae->pos, "Array '" + name + "' index out of range.");
                    }
                }
            }
            
        }
    }
    // check index
    /* fill code here */
    return;
}

// 检查成员表达式 
tc_type check_MemberExpr(std::ostream& out, aA_memberExpr me){
    // check if the member exists and return the tyep of the member
    if(!me)
        return nullptr;
    string name = *me->structId->u.id;
    paramMemberMap &currentParam = paramStack.back();
    // check struct name
    /* fill code here */
    if (currentParam.find(name) == currentParam.end()) {
        error_print(out, me->pos, "Struct '" + name + "' not declared.");
    }
    // check member name
    /* fill code here */
    vector<aA_varDecl>* members = currentParam[name];
    for (aA_varDecl member : *members) {
        if (*member->u.declScalar->id == *me->memberId) {
            return tc_Type(member);
        }
    }
    error_print(out, me->pos, "Member '" + *me->memberId + "' not declared in struct '" + name + "'.");
    return nullptr;
}

// 检查If语句
void check_IfStmt(std::ostream& out, aA_ifStmt is){
    if(!is)
        return;
    check_BoolExpr(out, is->boolExpr);
    /* fill code here, take care of variable scope */
    // 貌似不需要做什么
    for(aA_codeBlockStmt s : is->ifStmts){
        check_CodeblockStmt(out, s);
    }
    /* fill code here */    
    for(aA_codeBlockStmt s : is->elseStmts){
        check_CodeblockStmt(out, s);
    }
    /* fill code here */
    return;
}

// 检查布尔表达式
void check_BoolExpr(std::ostream& out, aA_boolExpr be){
    if(!be)
        return;
    switch (be->kind)
    {
    case A_boolExprType::A_boolBiOpExprKind:
        check_BoolExpr(out, be->u.boolBiOpExpr->left);
        check_BoolExpr(out, be->u.boolBiOpExpr->right);
        break;
    case A_boolExprType::A_boolUnitKind:
        check_BoolUnit(out, be->u.boolUnit);
        break;
    default:
        break;
    }
    return;
}

// 检查布尔单元
void check_BoolUnit(std::ostream& out, aA_boolUnit bu){
    if(!bu)
        return;
    switch (bu->kind)
    {
        case A_boolUnitType::A_comOpExprKind:{
            /* fill code here */
            check_ExprUnit(out, bu->u.comExpr->left);
            check_ExprUnit(out, bu->u.comExpr->right);
        }
            break;
        case A_boolUnitType::A_boolExprKind:
            check_BoolExpr(out, bu->u.boolExpr);
            break;
        case A_boolUnitType::A_boolUOpExprKind:
            check_BoolUnit(out, bu->u.boolUOpExpr->cond);
            break;
        default:
            break;
    }
    return;
}

// 检查表达式单元
tc_type check_ExprUnit(std::ostream& out, aA_exprUnit eu){
    // return the aA_type of expr eu  取得表达式的类型， 返回 ret
    if(!eu)
        return nullptr;
    tc_type ret;
    typeMap& currentScope = scopeStack.back();  // 使用当前作用域的typeMap
    switch (eu->kind)
    {
        case A_exprUnitType::A_idExprKind:{
            /* fill code here */
            if (currentScope.find(*eu->u.id) == currentScope.end()) {
                error_print(out, eu->pos, "Variable '" + *eu->u.id + "' not declared.");
            } else {
                ret = currentScope[*eu->u.id];
            }
        }
            break;
        case A_exprUnitType::A_numExprKind:{
            ret = tc_Type(aA_Type(eu->pos), 0);
        }
            break;
        case A_exprUnitType::A_fnCallKind:{
            check_FuncCall(out, eu->u.callExpr);
            // check_FuncCall will check if the function is defined
            /* fill code here */ //TODO: 还需要做什么？
            ret = func2retType[*eu->u.callExpr->fn];
        }
            break;
        case A_exprUnitType::A_arrayExprKind:{
            check_ArrayExpr(out, eu->u.arrayExpr);
            /* fill code here */
            ret = currentScope[*eu->u.arrayExpr->arr->u.id];
        }
            break;
        case A_exprUnitType::A_memberExprKind:{
            ret = check_MemberExpr(out, eu->u.memberExpr);
        }
            break;
        case A_exprUnitType::A_arithExprKind:{
            ret = check_ArithExpr(out, eu->u.arithExpr);
        }
            break;
        case A_exprUnitType::A_arithUExprKind:{
            ret = check_ExprUnit(out, eu->u.arithUExpr->expr);
        }
            break;
    }
    return ret;
}

// 检查算术表达式
tc_type check_ArithExpr(std::ostream& out, aA_arithExpr ae){
    if(!ae)
        return nullptr;
    tc_type ret;
    switch (ae->kind)
    {
        case A_arithExprType::A_arithBiOpExprKind:{
            ret = check_ArithExpr(out, ae->u.arithBiOpExpr->left);
            tc_type rightTyep = check_ArithExpr(out, ae->u.arithBiOpExpr->right);
            if(ret->type->type > 0 || ret->type->type != A_dataType::A_nativeTypeKind || ret->type->u.nativeType != A_nativeType::A_intTypeKind ||
            rightTyep->type->type > 0 || rightTyep->type->type != A_dataType::A_nativeTypeKind || rightTyep->type->u.nativeType != A_nativeType::A_intTypeKind)
                error_print(out, ae->pos, "Only int can be arithmetic expression operation values!");
        }
            break;
        case A_arithExprType::A_exprUnitKind:
            ret = check_ExprUnit(out, ae->u.exprUnit);
            break;
    }
    return ret;
}

// 检查函数调用
void check_FuncCall(std::ostream& out, aA_fnCall fc){
    if(!fc)
        return;
    // check if function defined
    string func_name = *fc->fn;
    /* fill code here */
    if (func2Param.find(func_name) == func2Param.end()) {
        error_print(out, fc->pos, "Function '" + func_name + "' not defined.");
    }
    // check if parameter list matches
    for(int i = 0; i < fc->vals.size(); i++){
        /* fill code here */
        if (!comp_tc_type(tc_Type(func2Param[func_name]->at(i)), check_RightVal(out, fc->vals[i]))) {
            error_print(out, fc->pos, "Function '" + func_name + "' parameter type mismatch.");
        }
    }
    return ;
}

// 检查While语句
void check_WhileStmt(std::ostream& out, aA_whileStmt ws){
    if(!ws)
        return;
    check_BoolExpr(out, ws->boolExpr);
    /* fill code here, take care of variable scope */

    for(aA_codeBlockStmt s : ws->whileStmts){
        check_CodeblockStmt(out, s);
    }
    /* fill code here */
        
    return;
}

// 检查函数调用语句
void check_CallStmt(std::ostream& out, aA_callStmt cs){
    if(!cs)
        return;
    check_FuncCall(out, cs->fnCall);
    return;
}

// 检查返回语句
void check_ReturnStmt(std::ostream& out, aA_returnStmt rs){
    if(!rs)
        return;
    tc_type ret = check_RightVal(out, rs->retVal);
    return;
}

tc_type check_RightVal(std::ostream& out, aA_rightVal rv){
    if(!rv)
        return nullptr;
    tc_type ret;
    switch (rv->kind)
    {
        case A_rightValType::A_arithExprValKind:
            ret = check_ArithExpr(out, rv->u.arithExpr);
            break;
        case A_rightValType::A_boolExprValKind:
            check_BoolExpr(out, rv->u.boolExpr);
            ret = nullptr;
            break;
    }
    return ret;
}

// 获得变量的类型
tc_type get_VarDecl(aA_varDecl vdecl)
{
    if (!vdecl)
        return nullptr;
    string name;
    if(vdecl->kind == A_varDeclType::A_varDeclScalarKind){
        return tc_Type(vdecl->u.declScalar->type, 0);
    }else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind){
        return tc_Type(vdecl->u.declArray->type, 1);
    }
    return nullptr;
}
