%{
#include <stdio.h>
#include <string.h>
#include "TeaplAst.h"
#include "y.tab.hpp"
extern int line, col; // line is current line number, col is current column number
int c;
int calc(char *s, int len);
%}

// TODO:
// your lexer
%start COMMENT_1 COMMENT_2

%%
<INITIAL>{ 
    // 无意义字符
    " " { ++col; }
    "\t" { col+=4; }
    [\n\r]{ ++line; col=0; }
    "//" { BEGIN(COMMENT_1); }
    "/*" { BEGIN(COMMENT_2); }
    // 保留字 10
    "if"   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return IF; }
    "else" { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return ELSE; }
    "while"{ yylval.pos=A_Pos(line,col);col+=strlen(yytext);return WHILE; }
    "break"{ yylval.pos=A_Pos(line,col);col+=strlen(yytext);return BREAK; }
    "continue"{ yylval.pos=A_Pos(line,col);col+=strlen(yytext);return CONTINUE; }
    "ret"  { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return RET; }
    "let"  { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LET; }
    "int"  { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return INT; }
    "struct"{ yylval.pos=A_Pos(line,col);col+=strlen(yytext);return STRUCT; }
    "fn"   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return FN; }
    // OP 13
    "+"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return ADD; }
    "-"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return SUB; }
    "*"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return MUL; }
    "/"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return DIV; }
    "=="   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return EQ; }
    "!="   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return NE; }
    "<"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LT; }
    "<="   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LE; }
    ">"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return GT; }
    ">="   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return GE; }
    "&&"   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return AND; }
    "||"   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return OR; }
    "!"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return NOT; }
    // "%"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return MOD; }
    // 赋值 1
    "="    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return ASSIGN; }
    // 连接分隔符 10
    ";"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return SEMI; }
    ","    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return COMMA; }
    "."    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return DOT; }
    "("    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LP; }
    ")"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return RP; }
    "["    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LB; }
    "]"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return RB; }
    "{"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return LC; } // left curly
    "}"    { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return RC; }
    "->"   { yylval.pos=A_Pos(line,col);col+=strlen(yytext);return RA; } // right arrow
    // 数字和名
    ([1-9][0-9]*)|[0] {
        yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
        col+=yyleng;
        return NUM;
    }
    [0-9]+ {
        yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
        col+=yyleng;
        return UNUM;
    }
    [a-zA-Z][a-zA-Z0-9]* {
        yylval.tokenId = A_TokenId(A_Pos(line, col), strdup(yytext));
        col+=yyleng;
        return ID;
    }
    . { printf("Illegal CHAR: %s\n", yytext); }
}
<COMMENT_1>{
    [\n\r] { BEGIN(INITIAL); ++line; col=0; }
    . ;
}
<COMMENT_2>{
    "*/" { BEGIN(INITIAL); }
    [\n\r] { ++line; col=0; }
    . ;
}

%%

// This function takes a string of digits and its length as input, 
// and returns the integer value of the string.
int calc(char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}
