/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_HPP_INCLUDED
# define YY_YY_Y_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    NOT = 258,
    LP = 259,
    RP = 260,
    FnRetTypeDecl = 261,
    LET = 262,
    FN = 263,
    IF = 264,
    ELSE = 265,
    WHILE = 266,
    RET_ = 267,
    STRUCT = 268,
    BREAK = 269,
    CONTINUE = 270,
    TypeAssign = 271,
    StmtEnd = 272,
    EQ = 273,
    MLP = 274,
    MRP = 275,
    BLP = 276,
    BRP = 277,
    Comma = 278,
    POINT = 279,
    term = 280,
    LT = 281,
    LE = 282,
    GT = 283,
    GE = 284,
    EEQ = 285,
    NE = 286,
    OR = 287,
    AND = 288,
    SUB = 289,
    ADD = 290,
    MUL = 291,
    DIV = 292,
    NUMBER = 293,
    NativeType = 294
  };
#endif
/* Tokens.  */
#define NOT 258
#define LP 259
#define RP 260
#define FnRetTypeDecl 261
#define LET 262
#define FN 263
#define IF 264
#define ELSE 265
#define WHILE 266
#define RET_ 267
#define STRUCT 268
#define BREAK 269
#define CONTINUE 270
#define TypeAssign 271
#define StmtEnd 272
#define EQ 273
#define MLP 274
#define MRP 275
#define BLP 276
#define BRP 277
#define Comma 278
#define POINT 279
#define term 280
#define LT 281
#define LE 282
#define GT 283
#define GE 284
#define EEQ 285
#define NE 286
#define OR 287
#define AND 288
#define SUB 289
#define ADD 290
#define MUL 291
#define DIV 292
#define NUMBER 293
#define NativeType 294

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 20 "parser.yacc"

	//int val;
	//char *id;
	A_pos pos;
	A_tokenId tokenId;
	A_tokenNum tokenNum;

	A_type type;
	A_programElementList programElements;
	A_programElement programElement;

	A_varDeclStmt varDeclStmt;
	A_varDecl varDecl;
	A_varDef varDef;

	A_rightValList rightValList;

	A_varDeclList paramDecl;
	A_codeBlockStmtList stmts;

	A_structDef structDef;


	A_fnDeclStmt fnDeclStmt;
	A_fnDecl fnDecl;

	A_fnDef fnDef;

	A_codeBlockStmt codeBlockStmt;

	A_assignStmt assignStmt;
	A_callStmt callStmt;
	A_ifStmt ifStmt;
	A_whileStmt whileStmt;
	A_returnStmt returnStmt;

	//rightVal
	A_rightVal rightVal;
	//leftVal
	A_leftVal leftVal;
	A_arithExpr arithExpr;
	A_boolExpr boolExpr;
	A_arithBiOpExpr arithBiOpExpr;
	A_exprUnit exprUnit;
	A_arithUExpr arithUExpr;
	A_arithBiOp op;
	A_fnCall fnCall;
	A_indexExpr indexExpr;
	A_memberExpr memberExpr;
	A_boolBiOpExpr boolBiOpExpr;
	A_boolUnit boolUnit;
	A_comExpr comExpr;
	A_boolUOpExpr boolUOpExpr;



#line 192 "y.tab.hpp"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_HPP_INCLUDED  */
