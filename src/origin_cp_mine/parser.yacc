%{
#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(char *s); 
extern int  yywrap();
}

%}


%union {
  //这里直接copy TeaplAst.h里的定义
  // 43个
  A_pos pos;
  A_program program;
  A_programElementList programElementList;
  A_programElement programElement;
  A_arithExpr arithExpr;
  A_exprUnit exprUnit;
  A_structDef structDef;
  A_varDeclStmt varDeclStmt;
  A_fnDeclStmt fnDeclStmt;
  A_fnDef fnDef;
  A_type type;
  A_varDecl varDecl; 
  A_varDef varDef;
  A_rightVal rightVal;
  A_boolExpr boolExpr;
  A_arithBiOpExpr arithBiOpExpr;
  A_arithUExpr arithUExpr;
  A_fnCall fnCall;
  A_indexExpr indexExpr;
  A_arrayExpr arrayExpr;
  A_memberExpr memberExpr;
  A_boolUnit boolUnit;
  A_boolBiOpExpr boolBiOpExpr;
  A_boolUOpExpr boolUOpExpr;
  A_comExpr comExpr;
  A_leftVal leftVal;
  A_assignStmt assignStmt;
  A_rightValList rightValList;
  A_varDefScalar varDefScalar;
  A_varDefArray varDefArray;
  A_varDeclScalar varDeclScalar;
  A_varDeclArray varDeclArray;
  A_varDeclList varDeclList;
  A_paramDecl paramDecl;
  A_fnDecl fnDecl;
  A_codeBlockStmt codeBlockStmt;
  A_ifStmt ifStmt;
  A_whileStmt whileStmt;
  A_callStmt callStmt;
  A_returnStmt returnStmt;
  A_codeBlockStmtList codeBlockStmtList;
  A_tokenId tokenId;
  A_tokenNum tokenNum;
}

//token, 将lexer.lex中对终止符的定义映射到token
//保留字 10
%token <pos> IF
%token <pos> ELSE
%token <pos> WHILE
%token <pos> BREAK
%token <pos> CONTINUE
%token <pos> RETURN
%token <pos> LET
%token <pos> INT
%token <pos> STRUCT
%token <pos> FN
// OP 13
%token <pos> ADD
%token <pos> SUB
%token <pos> MUL
%token <pos> DIV

%token <pos> EQ
%token <pos> NE
%token <pos> LT
%token <pos> LE
%token <pos> GT
%token <pos> GE

%token <pos> AND
%token <pos> OR
%token <pos> NOT
//赋值，声明
%token <pos> ASSIGN
%token <pos> COLON
// 连接分隔符 10
%token <pos> SEMI
%token <pos> COMMA
%token <pos> DOT
%token <pos> LP
%token <pos> RP
%token <pos> LB
%token <pos> RB
%token <pos> LC // left curly
%token <pos> RC
%token <pos> RA // right arrow
// 数字和名
%token <tokenNum> NUM
// %token <tokenNum> UNUM
%token <tokenId> ID

%left SEMI
%left COMMA
%left WHILE
%left IF 
%left ELSE 

%left ID
%left ASSIGN

%left OR 
%left AND 

%left EQ NE LT LE GT GE


%left ADD SUB 
%left MUL DIV

%right NOT
// %right NEG

%right LB
%left RB

%left DOT

%right LP
%left RP
// 为了解决冲突: 
// 21 FnDeclStmt: FnDecl SEMI .
// 83 CodeBlockStmt: SEMI .
%left LET
%left STRUCT
%right FN




// 43个类型, 去除pos, tokenId, tokenNum

// %type <pos> Pos
%type <program> Program //1
%type <programElementList> ProgramElementList //2
%type <programElement> ProgramElement //3
%type <arithExpr> ArithExpr //4
%type <exprUnit> ExprUnit //5
%type <structDef> StructDef //6
%type <varDeclStmt> VarDeclStmt //7
%type <fnDeclStmt> FnDeclStmt //8
%type <fnDef> FnDef //9
%type <type> Type  //10
%type <varDecl> VarDecl //11
%type <varDef> VarDef //12
%type <rightVal> RightVal //13
%type <boolExpr> BoolExpr //14
%type <arithBiOpExpr> ArithBiOpExpr //15
%type <arithUExpr> ArithUExpr //16
%type <fnCall> FnCall //17
%type <indexExpr> IndexExpr //18
%type <arrayExpr> ArrayExpr //19
%type <memberExpr> MemberExpr //20
%type <boolUnit> BoolUnit //21
%type <boolBiOpExpr> BoolBiOpExpr //22
%type <boolUOpExpr> BoolUOpExpr //23
%type <comExpr> ComExpr //24
%type <leftVal> LeftVal //25
%type <assignStmt> AssignStmt //26
%type <rightValList> RightValList //27
%type <varDefScalar> VarDefScalar //28
%type <varDefArray> VarDefArray //29
%type <varDeclScalar> VarDeclScalar //30
%type <varDeclArray> VarDeclArray //31
%type <varDeclList> VarDeclList //32
%type <paramDecl> ParamDecl //33
%type <fnDecl> FnDecl //34
%type <codeBlockStmt> CodeBlockStmt //35
%type <ifStmt> IfStmt //36
%type <whileStmt> WhileStmt //37
%type <callStmt> CallStmt //38
%type <returnStmt> ReturnStmt //39
%type <codeBlockStmtList> CodeBlockStmtList //40
// %type <tokenId> TokenId
// %type <tokenNum> TokenNum

%start Program

%%                   /* beginning of rules section */
// 接下来将根据 TeaplAst.h 的所有构造函数，定义对应的语法规则
// 分配构造函数:

//1
// A_program A_Program(A_programElementList programElements);
Program: ProgramElementList 
{  
  root = A_Program($1);
  $$ = A_Program($1);
}
;

//2
// A_programElementList A_ProgramElementList(A_programElement head, A_programElementList tail);
ProgramElementList: 
ProgramElement ProgramElementList
{
  $$ = A_ProgramElementList($1, $2);
}
|
{
  $$ = nullptr;
}
;

//3
// A_programElement A_ProgramNullStmt(A_pos pos);
// A_programElement A_ProgramVarDeclStmt(A_pos pos, A_varDeclStmt varDeclStmt);
// A_programElement A_ProgramStructDef(A_pos pos, A_structDef structDef);
// A_programElement A_ProgramFnDeclStmt(A_pos pos, A_fnDeclStmt fnDecl);
// A_programElement A_ProgramFnDef(A_pos pos, A_fnDef fnDef);
ProgramElement: 
  VarDeclStmt
{
  $$ = A_ProgramVarDeclStmt($1->pos, $1);
}
| StructDef
{
  $$ = A_ProgramStructDef($1->pos, $1);
}
| FnDeclStmt
{
  $$ = A_ProgramFnDeclStmt($1->pos, $1);
}
| FnDef
{
  $$ = A_ProgramFnDef($1->pos, $1);
}
| SEMI
{
  $$ = A_ProgramNullStmt($1);
}
;


//4 
// A_arithExpr A_ArithBiOp_Expr(A_pos pos, A_arithBiOpExpr arithBiOpExpr);
// A_arithExpr A_ExprUnit(A_pos pos, A_exprUnit exprUnit);
ArithExpr: //修改了原来给出的示例
ExprUnit
{
  $$ = A_ExprUnit($1->pos, $1);
}
| ArithBiOpExpr //->15
{
  $$ = A_ArithBiOp_Expr($1->pos, $1);
}
;

//5
// A_exprUnit A_NumExprUnit(A_pos pos, int num);
// A_exprUnit A_IdExprUnit(A_pos pos, char* id);
// A_exprUnit A_ArithExprUnit(A_pos pos, A_arithExpr arithExpr);
// A_exprUnit A_CallExprUnit(A_pos pos, A_fnCall callExpr);
// A_exprUnit A_ArrayExprUnit(A_pos pos, A_arrayExpr arrayExpr);
// A_exprUnit A_MemberExprUnit(A_pos pos, A_memberExpr memberExpr);
// A_exprUnit A_ArithUExprUnit(A_pos pos, A_arithUExpr arithUExpr);
ExprUnit: 
NUM{
  $$ = A_NumExprUnit($1->pos, $1->num); // 直接给入num
}
| 
ID{
  $$ = A_IdExprUnit($1->pos, $1->id);
}
| 
LP ArithExpr RP{
  $$ = A_ArithExprUnit($1, $2); //LP is pos
}
| 
FnCall{
  $$ = A_CallExprUnit($1->pos, $1);
}
| 
ArrayExpr{
  $$ = A_ArrayExprUnit($1->pos, $1);
}
| 
MemberExpr{
  $$ = A_MemberExprUnit($1->pos, $1);
}
| 
ArithUExpr{
  $$ = A_ArithUExprUnit($1->pos, $1);
}
;

//6
// A_structDef A_StructDef(A_pos pos, char* id, A_varDeclList varDecls);
StructDef: 
STRUCT ID LC VarDeclList RC
{
  $$ = A_StructDef($1, $2->id, $4);
}
;

//7
// A_varDeclStmt A_VarDeclStmt(A_pos pos, A_varDecl varDecl);
// A_varDeclStmt A_VarDefStmt(A_pos pos, A_varDef varDef);
VarDeclStmt: 
  LET VarDecl SEMI {
  $$ = A_VarDeclStmt($1, $2);
}
| LET VarDef SEMI {
  $$ = A_VarDefStmt($1, $2);
}

//8
// A_fnDeclStmt A_FnDeclStmt(A_pos pos, A_fnDecl fnDecl);
FnDeclStmt: FnDecl SEMI
{
  $$ = A_FnDeclStmt($1->pos, $1);
}
;

//9
// A_fnDef A_FnDef(A_pos pos, A_fnDecl fnDecl, A_codeBlockStmtList stmts);
FnDef:
  FnDecl LC CodeBlockStmtList RC
{
  $$ = A_FnDef($1->pos, $1, $3);
}
;

//10
// A_type A_NativeType(A_pos pos, A_nativeType ntype);
// A_type A_StructType(A_pos pos, char* stype);
Type:
INT
{
  $$ = A_NativeType($1, A_intTypeKind);
}
| ID
{
  $$ = A_StructType($1->pos, $1->id);
}
;

//11
// A_varDecl A_VarDecl_Scalar(A_pos pos, A_varDeclScalar declScalar);
// A_varDecl A_VarDecl_Array(A_pos pos, A_varDeclArray declArray);
VarDecl:
VarDeclScalar
{
  $$ = A_VarDecl_Scalar($1->pos, $1);
}
| VarDeclArray
{
  $$ = A_VarDecl_Array($1->pos, $1);
}
;

//12
// A_varDef A_VarDef_Scalar(A_pos pos, A_varDefScalar defScalar);
// A_varDef A_VarDef_Array(A_pos pos, A_varDefArray defArray);
VarDef:
VarDefScalar
{
  $$ = A_VarDef_Scalar($1->pos, $1);
}
| VarDefArray
{
  $$ = A_VarDef_Array($1->pos, $1);
}
;

//13
// A_rightVal A_ArithExprRVal(A_pos pos, A_arithExpr arithExpr);
// A_rightVal A_BoolExprRVal(A_pos pos, A_boolExpr boolExpr);
RightVal:
 ArithExpr
{
  $$ = A_ArithExprRVal($1->pos, $1);
}
| BoolExpr
{
  $$ = A_BoolExprRVal($1->pos, $1);
}
|
{
  $$ = nullptr; // 解决 "RETURN;"
}
;

//14
// A_boolExpr A_BoolBiOp_Expr(A_pos pos, A_boolBiOpExpr boolBiOpExpr);
// A_boolExpr A_BoolExpr(A_pos pos, A_boolUnit boolUnit);
BoolExpr:
  BoolBiOpExpr
{
  $$ = A_BoolBiOp_Expr($1->pos, $1);
}
| BoolUnit
{
  $$ = A_BoolExpr($1->pos, $1);
}
;

//15
// A_arithBiOpExpr A_ArithBiOpExpr(A_pos pos, A_arithBiOp op, A_arithExpr left, A_arithExpr right);
// 这里四条
ArithBiOpExpr:
  ArithExpr ADD ArithExpr
{
  $$ = A_ArithBiOpExpr($1->pos, A_add, $1, $3);
}
| ArithExpr SUB ArithExpr
{
  $$ = A_ArithBiOpExpr($1->pos, A_sub, $1, $3);
}
| ArithExpr MUL ArithExpr
{
  $$ = A_ArithBiOpExpr($1->pos, A_mul, $1, $3);
}
| ArithExpr DIV ArithExpr
{
  $$ = A_ArithBiOpExpr($1->pos, A_div, $1, $3);
}
;

//16
// A_arithUExpr A_ArithUExpr(A_pos pos, A_arithUOp op, A_exprUnit expr);
ArithUExpr:
  SUB ExprUnit
{
  $$ = A_ArithUExpr($1, A_neg, $2); //SUB is pos, 要提供ArithUOp 吗，只有一种，算了
  //这里结构体里面的定义确实是A_neg, 太逆天了
  /*
  typedef enum {
    A_neg
  } A_arithUOp;
  */
}
;

//17
// A_fnCall A_FnCall(A_pos pos, char* fn, A_rightValList vals);
FnCall:
ID LP RightValList RP
{
  $$ = A_FnCall($1->pos, $1->id, $3);
}
;

//18
// A_indexExpr A_NumIndexExpr(A_pos pos, int num);
// A_indexExpr A_IdIndexExpr(A_pos pos, char* id);
IndexExpr:
NUM
{
  $$ = A_NumIndexExpr($1->pos, $1->num);
}
| ID
{
  $$ = A_IdIndexExpr($1->pos, $1->id);
}
;

//19
// A_arrayExpr A_ArrayExpr(A_pos pos, A_leftVal arr, A_indexExpr idx);
ArrayExpr:
// ID LB IndexExpr RB
LeftVal LB IndexExpr RB
{
  $$ = A_ArrayExpr($1->pos, $1, $3);
}
;
//20
// A_memberExpr A_MemberExpr(A_pos pos, A_leftVal structId, char* memberId);
MemberExpr:
LeftVal DOT ID
{
  $$ = A_MemberExpr($1->pos, $1, $3->id);
}
;
//21
// A_boolUnit A_ComExprUnit(A_pos pos, A_comExpr comExpr);
// A_boolUnit A_BoolExprUnit(A_pos pos, A_boolExpr boolExpr);
// A_boolUnit A_BoolUOpExprUnit(A_pos pos, A_boolUOpExpr boolUOpExpr);
BoolUnit:
ComExpr
{
  $$ = A_ComExprUnit($1->pos, $1);
}
| LP BoolExpr RP
{
  $$ = A_BoolExprUnit($1, $2); //LP is pos
}
| BoolUOpExpr
{
  $$ = A_BoolUOpExprUnit($1->pos, $1);
}
;

//22
// A_boolBiOpExpr A_BoolBiOpExpr(A_pos pos, A_boolBiOp op, A_boolExpr left, A_boolExpr right);
BoolBiOpExpr:
BoolExpr AND BoolExpr
{
  $$ = A_BoolBiOpExpr($1->pos, A_and, $1, $3);
}
| BoolExpr OR BoolExpr
{
  $$ = A_BoolBiOpExpr($1->pos, A_or, $1, $3);
}
;

//23
// A_boolUOpExpr A_BoolUOpExpr(A_pos pos, A_boolUOp op, A_boolUnit cond);
BoolUOpExpr:
NOT BoolUnit
{
  $$ = A_BoolUOpExpr($1, A_not, $2); //NOT is pos
}
;
//24
// A_comExpr A_ComExpr(A_pos pos, A_comOp op, A_exprUnit left, A_exprUnit right);
ComExpr:
ExprUnit GT ExprUnit
{
  $$ = A_ComExpr($1->pos, A_gt, $1, $3);
}
| ExprUnit GE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ge, $1, $3);
}
| ExprUnit LT ExprUnit
{
  $$ = A_ComExpr($1->pos, A_lt, $1, $3);
}
| ExprUnit LE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_le, $1, $3);
}
| ExprUnit EQ ExprUnit
{
  $$ = A_ComExpr($1->pos, A_eq, $1, $3);
}
| ExprUnit NE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ne, $1, $3);
}
;

//25
// A_leftVal A_IdExprLVal(A_pos pos, char* id);
// A_leftVal A_ArrExprLVal(A_pos pos, A_arrayExpr arrExpr);
// A_leftVal A_MemberExprLVal(A_pos pos, A_memberExpr memberExpr);
LeftVal:
ID
{
  $$ = A_IdExprLVal($1->pos, $1->id);
}
| ArrayExpr
{
  $$ = A_ArrExprLVal($1->pos, $1);
}
| MemberExpr
{
  $$ = A_MemberExprLVal($1->pos, $1);
}
;

//26
// A_assignStmt A_AssignStmt(A_pos pos, A_leftVal leftVal, A_rightVal rightVal);
AssignStmt:
LeftVal ASSIGN RightVal SEMI
{
  $$ = A_AssignStmt($1->pos, $1, $3);
}
;
//27
// A_rightValList A_RightValList(A_rightVal head, A_rightValList tail);
RightValList:
RightVal COMMA RightValList{
  $$ = A_RightValList($1, $3);
}
| RightVal{
  $$ = A_RightValList($1, nullptr);
}
// | 
// {
//   $$ = nullptr;
// }
// TODO: RightVal 可以为空吗？
;
//28
//A_varDef A_VarDef_Scalar(A_pos pos, A_varDefScalar defScalar);
VarDefScalar:
ID COLON Type ASSIGN RightVal
{
  $$ = A_VarDefScalar($1->pos, $1->id, $3, $5);
}
| ID ASSIGN RightVal
{
  $$ = A_VarDefScalar($1->pos, $1->id, nullptr, $3);
}
;

//29
//A_varDef A_VarDef_Array(A_pos pos, A_varDefArray defArray);
VarDefArray:
// a[i] :int = {1, 2, 3}
ID LB NUM RB COLON Type ASSIGN LC RightValList RC
{
  $$ = A_VarDefArray($1->pos, $1->id, $3->num, $6, $9);
}
| ID LB NUM RB ASSIGN RightValList
{
  $$ = A_VarDefArray($1->pos, $1->id, $3->num, nullptr, $6);
}
;

//30
//A_varDeclScalar A_VarDeclScalar(A_pos pos, char* id, A_type type);
VarDeclScalar:
ID COLON Type
{
  $$ = A_VarDeclScalar($1->pos, $1->id, $3);
}
| ID
{
  $$ =  A_VarDeclScalar($1->pos, $1->id, nullptr);
}
;

//31
//A_varDeclArray A_VarDeclArray(A_pos pos, char* id, int len, A_type type);
VarDeclArray:
ID LB NUM RB COLON Type
{
  $$ = A_VarDeclArray($1->pos, $1->id, $3->num, $6);
}
| ID LB NUM RB
{
  $$ = A_VarDeclArray($1->pos, $1->id, $3->num, nullptr);
}
;

//32
// A_varDeclList A_VarDeclList(A_varDecl head, A_varDeclList tail);
VarDeclList: 
VarDecl COMMA VarDeclList
{
  $$ = A_VarDeclList($1, $3);
}
| VarDecl
{
  $$ = A_VarDeclList($1, nullptr);
}
|
{
  $$ = nullptr;
}
;

//33
// A_paramDecl A_ParamDecl(A_varDeclList varDecls);
ParamDecl: VarDeclList
{
  $$ = A_ParamDecl($1);
} 
// |
// {
//   $$ = nullptr;
// }
;

//34
// A_fnDecl A_FnDecl(A_pos pos, char* id, A_paramDecl paramDecl, A_type type);
FnDecl: 
FN ID LP ParamDecl RP RA Type
{
  $$ = A_FnDecl($1, $2->id, $4, $7); //有返回值
}
| FN ID LP ParamDecl RP 
{
  $$ = A_FnDecl($1, $2->id, $4, nullptr); //无返回值
}

;

//35
// A_codeBlockStmt A_BlockNullStmt(A_pos pos);
// A_codeBlockStmt A_BlockVarDeclStmt(A_pos pos, A_varDeclStmt varDeclStmt);
// A_codeBlockStmt A_BlockAssignStmt(A_pos pos, A_assignStmt assignStmt);
// A_codeBlockStmt A_BlockCallStmt(A_pos pos, A_callStmt callStmt);
// A_codeBlockStmt A_BlockIfStmt(A_pos pos, A_ifStmt ifStmt);
// A_codeBlockStmt A_BlockWhileStmt(A_pos pos, A_whileStmt whileStmt);
// A_codeBlockStmt A_BlockReturnStmt(A_pos pos, A_returnStmt returnStmt);
// A_codeBlockStmt A_BlockContinueStmt(A_pos pos);
// A_codeBlockStmt A_BlockBreakStmt(A_pos pos);
CodeBlockStmt:
VarDeclStmt
{
  $$ = A_BlockVarDeclStmt($1->pos, $1);
}
| AssignStmt
{
  $$ = A_BlockAssignStmt($1->pos, $1);
}
| CallStmt
{
  $$ = A_BlockCallStmt($1->pos, $1);
}
| IfStmt
{
  $$ = A_BlockIfStmt($1->pos, $1);
}
| WhileStmt
{
  $$ = A_BlockWhileStmt($1->pos, $1);
}
| ReturnStmt
{
  $$ = A_BlockReturnStmt($1->pos, $1);
}
| CONTINUE SEMI
{
  $$ = A_BlockContinueStmt($1); //CONTINUE is pos
}
| BREAK SEMI
{
  $$ = A_BlockBreakStmt($1); //BREAK is pos
}
| SEMI
{
  $$ = A_BlockNullStmt($1); //SEMI is pos
}
;


//36
// A_ifStmt A_IfStmt(A_pos pos, A_boolExpr boolExpr, A_codeBlockStmtList ifStmts, A_codeBlockStmtList elseStmts);
IfStmt:
IF LP BoolExpr RP LC CodeBlockStmtList RC ELSE LC CodeBlockStmtList RC //TODO: 这里的ELSE 后面的CodeBlockStmtList 应该要加上{}?
{
  $$ = A_IfStmt($1, $3, $6, $10); //with else
}
| IF LP BoolExpr RP LC CodeBlockStmtList RC
{
  $$ = A_IfStmt($1, $3, $6, nullptr); //no else
}
;

//37
// A_whileStmt A_WhileStmt(A_pos pos, A_boolExpr boolExpr, A_codeBlockStmtList whileStmts);
WhileStmt:
WHILE LP BoolExpr RP LC CodeBlockStmtList RC
{
  $$ = A_WhileStmt($1, $3, $6); //WHILE is pos
}
;

//38
// A_callStmt A_CallStmt(A_pos pos, A_fnCall fnCall);
CallStmt:
FnCall SEMI
{
  $$ = A_CallStmt($1->pos, $1);
}
;

//39
// A_returnStmt A_ReturnStmt(A_pos pos, A_rightVal retVal);
ReturnStmt:
RETURN RightVal SEMI
{
  $$ = A_ReturnStmt($1, $2); //RETURN is pos
}
// TODO: 在RightVal中加入空，这里就不再加入空了
// | RETURN SEMI
// {
//   $$ = A_ReturnStmt($1, nullptr); //RETURN is pos
// }
;

//40
// A_codeBlockStmtList A_CodeBlockStmtList(A_codeBlockStmt head, A_codeBlockStmtList tail);
CodeBlockStmtList:
CodeBlockStmt CodeBlockStmtList
{
  $$ = A_CodeBlockStmtList($1, $2);
}
// TODO: 认为这里应该直接接空?
// | 
// {
//   $$ = nullptr;
// }
| CodeBlockStmt
{
  $$ = A_CodeBlockStmtList($1, nullptr);
}
;




%%

extern "C"{
void yyerror(char * s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}
}


