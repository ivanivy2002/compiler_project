/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.yacc"

#include <stdio.h>
#include "TeaplAst.h"

//extern A_pos pos;
extern int line, col;
extern A_program root;
A_pos my_pos();
extern int yylex(void);
extern "C"{
extern void yyerror(char *s); 
extern int  yywrap();
}


#line 86 "y.tab.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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



#line 273 "y.tab.cpp"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_HPP_INCLUDED  */



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  17
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   200

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  36
/* YYNRULES -- Number of rules.  */
#define YYNRULES  88
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  176

#define YYUNDEFTOK  2
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   134,   134,   135,   141,   144,   147,   150,   153,   157,
     158,   160,   164,   168,   172,   177,   181,   185,   188,   192,
     193,   198,   201,   205,   210,   214,   220,   221,   226,   227,
     228,   231,   236,   242,   246,   253,   254,   255,   256,   257,
     258,   259,   260,   261,   262,   265,   267,   270,   274,   275,
     280,   283,   287,   292,   295,   300,   301,   303,   304,   306,
     307,   308,   309,   311,   312,   313,   314,   315,   316,   317,
     319,   321,   324,   326,   327,   329,   330,   331,   332,   333,
     334,   336,   337,   339,   340,   342,   343,   344,   346
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "NOT", "LP", "RP", "FnRetTypeDecl",
  "LET", "FN", "IF", "ELSE", "WHILE", "RET_", "STRUCT", "BREAK",
  "CONTINUE", "TypeAssign", "StmtEnd", "EQ", "MLP", "MRP", "BLP", "BRP",
  "Comma", "POINT", "term", "LT", "LE", "GT", "GE", "EEQ", "NE", "OR",
  "AND", "SUB", "ADD", "MUL", "DIV", "NUMBER", "NativeType", "$accept",
  "my_program", "my_programElement", "my_varDeclStmt", "my_varDecl",
  "my_varDef", "my_rightValList", "my_NotNullRightValList",
  "my_fnDeclStmt", "my_structDef", "my_fnDef", "my_codeBlockStmtList",
  "my_leftVal", "my_assignStmt", "my_whileStmt", "my_ifStmt",
  "my_codeBlockStmt", "my_ifWhileBoolExpr", "my_fnDecl", "my_ParamDecl",
  "my_NotNullParaDecl", "my_fnRetType", "Type", "my_rightVal",
  "my_arithExpr", "my_arithBiOpExpr", "my_exprUnit", "my_fnCall",
  "my_arithUExpr", "my_memberExpr", "my_indexExpr", "my_comExpr",
  "my_boolExpr", "my_boolBiOpExpr", "my_boolUnit", "my_boolUOpExpr", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294
};
# endif

#define YYPACT_NINF (-132)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-31)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      91,   -13,    -1,     5,  -132,    44,    91,  -132,  -132,  -132,
    -132,    87,    42,    57,    83,    65,    72,  -132,  -132,   -16,
      22,    63,  -132,  -132,    88,  -132,   105,    88,  -132,  -132,
     103,    22,    22,     9,     4,  -132,    -4,  -132,   107,  -132,
      97,  -132,  -132,     3,  -132,   100,  -132,  -132,  -132,    98,
      81,   111,   140,  -132,   142,   144,    77,   133,   135,  -132,
     149,  -132,   132,    34,  -132,  -132,  -132,   105,   138,  -132,
     134,    22,    97,  -132,     0,    16,    22,     4,  -132,    -7,
     136,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       4,    22,    22,   113,   -16,   119,    88,   152,    22,    22,
    -132,   143,  -132,  -132,  -132,    22,    -7,  -132,  -132,  -132,
    -132,  -132,  -132,   154,  -132,   139,  -132,  -132,  -132,   145,
    -132,    73,    73,  -132,  -132,  -132,  -132,  -132,  -132,  -132,
    -132,   130,  -132,   -16,   146,  -132,   148,  -132,   -16,  -132,
     159,   100,   161,  -132,   153,   151,  -132,    22,    31,   155,
      22,   156,  -132,   157,   158,  -132,  -132,  -132,   160,   147,
     -16,   105,   105,    22,  -132,  -132,   162,   163,   164,   165,
    -132,  -132,   166,   105,   167,  -132
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,     0,     0,     8,     0,     2,     4,     6,     5,
       7,    12,     0,     0,     0,     0,     0,     1,     3,     0,
       0,     0,     9,    10,    48,    23,    26,     0,    53,    54,
      11,     0,     0,    64,     0,    63,     0,    16,    55,    57,
      58,    66,    69,    68,    85,    56,    81,    82,    87,     0,
      12,    50,     0,    49,     0,     0,     0,     0,     0,    35,
      28,    36,     0,     0,    37,    40,    39,    26,     0,    30,
       0,     0,     0,    88,     0,     0,    19,     0,    71,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    14,     0,     0,     0,    47,     0,     0,
      42,     0,    44,    43,    25,     0,     0,    27,    38,    24,
      15,    65,    86,     0,    20,    21,    58,    74,    73,     0,
      72,    59,    60,    61,    62,    75,    76,    77,    78,    79,
      80,    84,    83,     0,     0,    11,     0,    51,     0,    46,
       0,    45,     0,    41,     0,     0,    70,     0,    67,    13,
      19,    14,    52,     0,     0,    31,    29,    22,     0,     0,
       0,    26,    26,    19,    18,    13,     0,     0,     0,    33,
      32,    17,     0,    26,     0,    34
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -132,   168,  -132,    10,   175,  -132,  -131,    30,  -132,  -132,
    -132,   -66,   -26,  -132,  -132,  -132,  -132,    84,  -132,  -132,
     -21,  -132,   -87,   -17,     8,  -132,   -20,   -24,  -132,   -22,
      74,  -132,   -15,  -132,   169,  -132
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     5,     6,    61,    51,    13,   113,   114,     8,     9,
      10,    62,    36,    64,    65,    66,    67,   140,    15,    52,
      53,   139,    30,   115,    38,    39,    40,    41,    42,    43,
     119,    44,    45,    46,    47,    48
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      63,   107,    68,    37,    69,   111,    70,   135,    77,    28,
       7,    72,    11,    76,    78,    79,     7,    75,   117,   159,
      80,   112,   -30,    29,    14,    31,    32,   -30,   -28,    33,
      16,   118,   168,   -28,    81,    82,    83,    84,    34,   101,
      74,    63,    35,    68,    17,    69,   149,    33,    91,    92,
     -29,   152,   105,   106,   110,   -29,    34,   116,    80,    22,
      35,   116,   116,   116,   116,   125,   126,   127,   128,   129,
     130,    72,    72,   165,    23,   137,   131,   132,    72,    72,
      31,    32,    25,   141,   141,    74,    26,    24,   144,   121,
     122,   123,   124,    27,   100,   166,   167,    94,     1,     2,
      95,    49,    33,    19,     3,    20,    21,   174,     4,    83,
      84,    34,     1,    50,    54,    35,    55,    56,    93,    57,
      58,    71,    59,    85,    86,    87,    88,    89,    90,   133,
      60,   134,    91,    92,    96,    63,    63,    68,    68,    69,
      69,    81,    82,    83,    84,    97,    98,    63,    99,    68,
     102,    69,   103,    76,   104,   108,   109,   136,   138,   146,
     143,   120,   147,    92,   153,   148,   154,   150,   151,   164,
     155,   156,   160,   158,    18,   172,    12,   157,   161,   162,
     145,   163,     0,   142,   169,   170,   171,   173,     0,   175,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      73
};

static const yytype_int16 yycheck[] =
{
      26,    67,    26,    20,    26,     5,    27,    94,     4,    25,
       0,    31,    25,     4,    34,    19,     6,    32,    25,   150,
      24,     5,    19,    39,    25,     3,     4,    24,    19,    25,
      25,    38,   163,    24,    34,    35,    36,    37,    34,    56,
      32,    67,    38,    67,     0,    67,   133,    25,    32,    33,
      19,   138,    18,    19,    71,    24,    34,    77,    24,    17,
      38,    81,    82,    83,    84,    85,    86,    87,    88,    89,
      90,    91,    92,   160,    17,    96,    91,    92,    98,    99,
       3,     4,    17,    98,    99,    77,    21,     4,   105,    81,
      82,    83,    84,    21,    17,   161,   162,    16,     7,     8,
      19,    38,    25,    16,    13,    18,    19,   173,    17,    36,
      37,    34,     7,    25,     9,    38,    11,    12,    20,    14,
      15,    18,    17,    26,    27,    28,    29,    30,    31,    16,
      25,    18,    32,    33,    23,   161,   162,   161,   162,   161,
     162,    34,    35,    36,    37,     5,     4,   173,     4,   173,
      17,   173,    17,     4,    22,    17,    22,    38,     6,     5,
      17,    25,    23,    33,     5,    20,     5,    21,    20,    22,
      17,    20,    16,    18,     6,    10,     1,   147,    21,    21,
     106,    21,    -1,    99,    22,    22,    22,    21,    -1,    22,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      31
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     7,     8,    13,    17,    41,    42,    43,    48,    49,
      50,    25,    44,    45,    25,    58,    25,     0,    41,    16,
      18,    19,    17,    17,     4,    17,    21,    21,    25,    39,
      62,     3,     4,    25,    34,    38,    52,    63,    64,    65,
      66,    67,    68,    69,    71,    72,    73,    74,    75,    38,
      25,    44,    59,    60,     9,    11,    12,    14,    15,    17,
      25,    43,    51,    52,    53,    54,    55,    56,    67,    69,
      60,    18,    66,    74,    64,    72,     4,     4,    66,    19,
      24,    34,    35,    36,    37,    26,    27,    28,    29,    30,
      31,    32,    33,    20,    16,    19,    23,     5,     4,     4,
      17,    63,    17,    17,    22,    18,    19,    51,    17,    22,
      63,     5,     5,    46,    47,    63,    66,    25,    38,    70,
      25,    64,    64,    64,    64,    66,    66,    66,    66,    66,
      66,    72,    72,    16,    18,    62,    38,    60,     6,    61,
      57,    72,    57,    17,    63,    70,     5,    23,    20,    62,
      21,    20,    62,     5,     5,    17,    20,    47,    18,    46,
      16,    21,    21,    21,    22,    62,    51,    51,    46,    22,
      22,    22,    10,    21,    51,    22
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    41,    42,    42,    42,    42,    42,    43,
      43,    44,    44,    44,    44,    45,    45,    45,    45,    46,
      46,    47,    47,    48,    49,    50,    51,    51,    52,    52,
      52,    53,    54,    55,    55,    56,    56,    56,    56,    56,
      56,    56,    56,    56,    56,    57,    58,    58,    59,    59,
      60,    60,    61,    62,    62,    63,    63,    64,    64,    65,
      65,    65,    65,    66,    66,    66,    66,    66,    66,    66,
      67,    68,    69,    70,    70,    71,    71,    71,    71,    71,
      71,    72,    72,    73,    73,    74,    74,    74,    75
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     1,     1,     1,     1,     1,     3,
       3,     3,     1,     6,     4,     5,     3,    10,     8,     0,
       1,     1,     3,     3,     5,     5,     0,     2,     1,     4,
       1,     4,     7,     7,    11,     1,     1,     1,     2,     1,
       1,     3,     2,     2,     2,     1,     5,     4,     0,     1,
       1,     3,     2,     1,     1,     1,     1,     1,     1,     3,
       3,     3,     3,     1,     1,     3,     1,     4,     1,     1,
       4,     2,     3,     1,     1,     3,     3,     3,     3,     3,
       3,     1,     1,     3,     3,     1,     3,     1,     2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2:
#line 134 "parser.yacc"
            {(yyval.programElements)=0; }
#line 1575 "y.tab.cpp"
    break;

  case 3:
#line 135 "parser.yacc"
                                      {
		root = A_Program(A_ProgramElementList((yyvsp[-1].programElement),(yyvsp[0].programElements)));
		(yyval.programElements)=root->programElements; 
	}
#line 1584 "y.tab.cpp"
    break;

  case 4:
#line 141 "parser.yacc"
                                   { 
		(yyval.programElement)= A_ProgramVarDeclStmt((yyvsp[0].varDeclStmt)->pos,(yyvsp[0].varDeclStmt));
	}
#line 1592 "y.tab.cpp"
    break;

  case 5:
#line 144 "parser.yacc"
                        {
		(yyval.programElement)= A_ProgramStructDef((yyvsp[0].structDef)->pos,(yyvsp[0].structDef));
	}
#line 1600 "y.tab.cpp"
    break;

  case 6:
#line 147 "parser.yacc"
                         {
		(yyval.programElement)= A_ProgramFnDeclStmt((yyvsp[0].fnDeclStmt)->pos,(yyvsp[0].fnDeclStmt));
	}
#line 1608 "y.tab.cpp"
    break;

  case 7:
#line 150 "parser.yacc"
                    {
		(yyval.programElement)= A_ProgramFnDef((yyvsp[0].fnDef)->pos,(yyvsp[0].fnDef));
	}
#line 1616 "y.tab.cpp"
    break;

  case 8:
#line 153 "parser.yacc"
                   {
		(yyval.programElement)= A_ProgramNullStmt((yyvsp[0].pos));
	}
#line 1624 "y.tab.cpp"
    break;

  case 9:
#line 157 "parser.yacc"
                                     {(yyval.varDeclStmt) =A_VarDeclStmt((yyvsp[-2].pos),(yyvsp[-1].varDecl)); }
#line 1630 "y.tab.cpp"
    break;

  case 10:
#line 158 "parser.yacc"
                              {(yyval.varDeclStmt) =A_VarDefStmt((yyvsp[-2].pos),(yyvsp[-1].varDef)); }
#line 1636 "y.tab.cpp"
    break;

  case 11:
#line 160 "parser.yacc"
                                 {
	// let a:int;
		(yyval.varDecl) = A_VarDecl_Scalar((yyvsp[-2].tokenId)->pos,A_VarDeclScalar((yyvsp[-2].tokenId)->pos,(yyvsp[-2].tokenId)->id,(yyvsp[0].type)));
	}
#line 1645 "y.tab.cpp"
    break;

  case 12:
#line 164 "parser.yacc"
                {
		// let a;
		(yyval.varDecl) = A_VarDecl_Scalar((yyvsp[0].tokenId)->pos,A_VarDeclScalar((yyvsp[0].tokenId)->pos,(yyvsp[0].tokenId)->id,0));
	}
#line 1654 "y.tab.cpp"
    break;

  case 13:
#line 168 "parser.yacc"
                                               {
		//let a[4]:int;
		(yyval.varDecl) = A_VarDecl_Array((yyvsp[-5].tokenId)->pos,A_VarDeclArray((yyvsp[-5].tokenId)->pos,(yyvsp[-5].tokenId)->id,(yyvsp[-3].tokenNum)->num,(yyvsp[0].type)));
	}
#line 1663 "y.tab.cpp"
    break;

  case 14:
#line 172 "parser.yacc"
                              {
		//let a[4];
		(yyval.varDecl) = A_VarDecl_Array((yyvsp[-3].tokenId)->pos,A_VarDeclArray((yyvsp[-3].tokenId)->pos,(yyvsp[-3].tokenId)->id,(yyvsp[-1].tokenNum)->num,0));
	}
#line 1672 "y.tab.cpp"
    break;

  case 15:
#line 177 "parser.yacc"
                                               {
	// let a:int=1;
		(yyval.varDef) = A_VarDef_Scalar((yyvsp[-4].tokenId)->pos,A_VarDefScalar((yyvsp[-4].tokenId)->pos,(yyvsp[-4].tokenId)->id,(yyvsp[-2].type),(yyvsp[0].rightVal)));
	}
#line 1681 "y.tab.cpp"
    break;

  case 16:
#line 181 "parser.yacc"
                               {
		// let a=1;
		(yyval.varDef) = A_VarDef_Scalar((yyvsp[-2].tokenId)->pos,A_VarDefScalar((yyvsp[-2].tokenId)->pos,(yyvsp[-2].tokenId)->id,0,(yyvsp[0].rightVal)));
	}
#line 1690 "y.tab.cpp"
    break;

  case 17:
#line 185 "parser.yacc"
                                                                         {
		(yyval.varDef) = A_VarDef_Array((yyvsp[-9].tokenId)->pos,A_VarDefArray((yyvsp[-9].tokenId)->pos,(yyvsp[-9].tokenId)->id,(yyvsp[-7].tokenNum)->num,(yyvsp[-4].type),(yyvsp[-1].rightValList)));
	}
#line 1698 "y.tab.cpp"
    break;

  case 18:
#line 188 "parser.yacc"
                                                         {
		(yyval.varDef) = A_VarDef_Array((yyvsp[-7].tokenId)->pos,A_VarDefArray((yyvsp[-7].tokenId)->pos,(yyvsp[-7].tokenId)->id,(yyvsp[-5].tokenNum)->num,0,(yyvsp[-1].rightValList)));
	}
#line 1706 "y.tab.cpp"
    break;

  case 19:
#line 192 "parser.yacc"
                 { (yyval.rightValList) = 0;}
#line 1712 "y.tab.cpp"
    break;

  case 20:
#line 193 "parser.yacc"
                                { 
		(yyval.rightValList) = (yyvsp[0].rightValList);
	}
#line 1720 "y.tab.cpp"
    break;

  case 21:
#line 198 "parser.yacc"
                    {
		(yyval.rightValList) = A_RightValList((yyvsp[0].rightVal),0);
	}
#line 1728 "y.tab.cpp"
    break;

  case 22:
#line 201 "parser.yacc"
                                                   {
		(yyval.rightValList) = A_RightValList((yyvsp[-2].rightVal),(yyvsp[0].rightValList));
	}
#line 1736 "y.tab.cpp"
    break;

  case 23:
#line 205 "parser.yacc"
                                  {
		(yyval.fnDeclStmt) = A_FnDeclStmt((yyvsp[-2].pos),(yyvsp[-1].fnDecl));
	}
#line 1744 "y.tab.cpp"
    break;

  case 24:
#line 210 "parser.yacc"
                                               {
		(yyval.structDef) = A_StructDef((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].paramDecl));
	}
#line 1752 "y.tab.cpp"
    break;

  case 25:
#line 214 "parser.yacc"
                                                    {
		(yyval.fnDef) = A_FnDef((yyvsp[-4].pos),(yyvsp[-3].fnDecl),(yyvsp[-1].stmts));
	}
#line 1760 "y.tab.cpp"
    break;

  case 26:
#line 220 "parser.yacc"
        { (yyval.stmts) = 0 ;}
#line 1766 "y.tab.cpp"
    break;

  case 27:
#line 221 "parser.yacc"
                                               {
		(yyval.stmts) = A_CodeBlockStmtList((yyvsp[-1].codeBlockStmt), (yyvsp[0].stmts));
	}
#line 1774 "y.tab.cpp"
    break;

  case 28:
#line 226 "parser.yacc"
             {(yyval.leftVal)= A_IdExprLVal((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);}
#line 1780 "y.tab.cpp"
    break;

  case 29:
#line 227 "parser.yacc"
                                         {(yyval.leftVal) = A_ArrExprLVal((yyvsp[-3].leftVal)->pos,A_ArrayExpr((yyvsp[-3].leftVal)->pos,(yyvsp[-3].leftVal),(yyvsp[-1].indexExpr)));}
#line 1786 "y.tab.cpp"
    break;

  case 30:
#line 228 "parser.yacc"
                       {(yyval.leftVal) =A_MemberExprLVal((yyvsp[0].memberExpr)->pos, (yyvsp[0].memberExpr));}
#line 1792 "y.tab.cpp"
    break;

  case 31:
#line 231 "parser.yacc"
                                          {
		(yyval.assignStmt) = A_AssignStmt((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), (yyvsp[-1].rightVal));
	}
#line 1800 "y.tab.cpp"
    break;

  case 32:
#line 237 "parser.yacc"
        {
		(yyval.whileStmt) = A_WhileStmt((yyvsp[-6].pos),(yyvsp[-4].boolExpr),(yyvsp[-1].stmts));
	}
#line 1808 "y.tab.cpp"
    break;

  case 33:
#line 243 "parser.yacc"
        {
		(yyval.ifStmt) = A_IfStmt((yyvsp[-6].pos),(yyvsp[-4].boolExpr),(yyvsp[-1].stmts),0);
	}
#line 1816 "y.tab.cpp"
    break;

  case 34:
#line 248 "parser.yacc"
        {
		(yyval.ifStmt) = A_IfStmt((yyvsp[-10].pos),(yyvsp[-8].boolExpr),(yyvsp[-5].stmts),(yyvsp[-1].stmts));
	}
#line 1824 "y.tab.cpp"
    break;

  case 35:
#line 253 "parser.yacc"
                { (yyval.codeBlockStmt) = A_BlockNullStmt((yyvsp[0].pos));}
#line 1830 "y.tab.cpp"
    break;

  case 36:
#line 254 "parser.yacc"
                         { (yyval.codeBlockStmt) = A_BlockVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));}
#line 1836 "y.tab.cpp"
    break;

  case 37:
#line 255 "parser.yacc"
                        { (yyval.codeBlockStmt) = A_BlockAssignStmt((yyvsp[0].assignStmt)->pos, (yyvsp[0].assignStmt));}
#line 1842 "y.tab.cpp"
    break;

  case 38:
#line 256 "parser.yacc"
                            { (yyval.codeBlockStmt) = A_BlockCallStmt((yyvsp[-1].fnCall)->pos, A_CallStmt((yyvsp[-1].fnCall)->pos, (yyvsp[-1].fnCall)));}
#line 1848 "y.tab.cpp"
    break;

  case 39:
#line 257 "parser.yacc"
                    {(yyval.codeBlockStmt) = A_BlockIfStmt((yyvsp[0].ifStmt)->pos,(yyvsp[0].ifStmt));}
#line 1854 "y.tab.cpp"
    break;

  case 40:
#line 258 "parser.yacc"
                       {(yyval.codeBlockStmt) = A_BlockWhileStmt((yyvsp[0].whileStmt)->pos,(yyvsp[0].whileStmt));}
#line 1860 "y.tab.cpp"
    break;

  case 41:
#line 259 "parser.yacc"
                                   {(yyval.codeBlockStmt) = A_BlockReturnStmt((yyvsp[-2].pos),A_ReturnStmt((yyvsp[-2].pos),(yyvsp[-1].rightVal)));}
#line 1866 "y.tab.cpp"
    break;

  case 42:
#line 260 "parser.yacc"
                       {(yyval.codeBlockStmt) = A_BlockReturnStmt((yyvsp[-1].pos),A_ReturnStmt((yyvsp[-1].pos),0));}
#line 1872 "y.tab.cpp"
    break;

  case 43:
#line 261 "parser.yacc"
                           {(yyval.codeBlockStmt) = A_BlockContinueStmt((yyvsp[-1].pos));}
#line 1878 "y.tab.cpp"
    break;

  case 44:
#line 262 "parser.yacc"
                        {(yyval.codeBlockStmt) = A_BlockBreakStmt((yyvsp[-1].pos));}
#line 1884 "y.tab.cpp"
    break;

  case 45:
#line 265 "parser.yacc"
                               {(yyval.boolExpr)=(yyvsp[0].boolExpr);}
#line 1890 "y.tab.cpp"
    break;

  case 46:
#line 267 "parser.yacc"
                                               {
		(yyval.fnDecl) = A_FnDecl((yyvsp[-4].tokenId)->pos,(yyvsp[-4].tokenId)->id,A_ParamDecl((yyvsp[-2].paramDecl)),(yyvsp[0].type));
	}
#line 1898 "y.tab.cpp"
    break;

  case 47:
#line 270 "parser.yacc"
                                {
		(yyval.fnDecl) = A_FnDecl((yyvsp[-3].tokenId)->pos,(yyvsp[-3].tokenId)->id,A_ParamDecl((yyvsp[-1].paramDecl)),0);
	}
#line 1906 "y.tab.cpp"
    break;

  case 48:
#line 274 "parser.yacc"
              {	(yyval.paramDecl) = 0;}
#line 1912 "y.tab.cpp"
    break;

  case 49:
#line 275 "parser.yacc"
                            {
		(yyval.paramDecl)=(yyvsp[0].paramDecl);
	}
#line 1920 "y.tab.cpp"
    break;

  case 50:
#line 280 "parser.yacc"
                   {
		(yyval.paramDecl)=A_VarDeclList((yyvsp[0].varDecl),0);
	}
#line 1928 "y.tab.cpp"
    break;

  case 51:
#line 283 "parser.yacc"
                                             {
		(yyval.paramDecl)=A_VarDeclList((yyvsp[-2].varDecl),(yyvsp[0].paramDecl));
	}
#line 1936 "y.tab.cpp"
    break;

  case 52:
#line 287 "parser.yacc"
                                {
		(yyval.type) = (yyvsp[0].type);
	}
#line 1944 "y.tab.cpp"
    break;

  case 53:
#line 292 "parser.yacc"
           {
		(yyval.type) = A_StructType((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
	}
#line 1952 "y.tab.cpp"
    break;

  case 54:
#line 295 "parser.yacc"
                     {
		(yyval.type) = (yyvsp[0].type);
	}
#line 1960 "y.tab.cpp"
    break;

  case 55:
#line 300 "parser.yacc"
                         {(yyval.rightVal)=A_ArithExprRVal((yyvsp[0].arithExpr)->pos, (yyvsp[0].arithExpr));}
#line 1966 "y.tab.cpp"
    break;

  case 56:
#line 301 "parser.yacc"
                     {(yyval.rightVal)=A_BoolExprRVal((yyvsp[0].boolExpr)->pos, (yyvsp[0].boolExpr));}
#line 1972 "y.tab.cpp"
    break;

  case 57:
#line 303 "parser.yacc"
                              {(yyval.arithExpr)=A_ArithBiOp_Expr((yyvsp[0].arithBiOpExpr)->pos,(yyvsp[0].arithBiOpExpr));}
#line 1978 "y.tab.cpp"
    break;

  case 58:
#line 304 "parser.yacc"
                     {(yyval.arithExpr)=A_ExprUnit((yyvsp[0].exprUnit)->pos,(yyvsp[0].exprUnit));}
#line 1984 "y.tab.cpp"
    break;

  case 59:
#line 306 "parser.yacc"
                                               {(yyval.arithBiOpExpr)=A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos,(yyvsp[-1].op),(yyvsp[-2].arithExpr),(yyvsp[0].arithExpr));}
#line 1990 "y.tab.cpp"
    break;

  case 60:
#line 307 "parser.yacc"
                                        {(yyval.arithBiOpExpr)=A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos,(yyvsp[-1].op),(yyvsp[-2].arithExpr),(yyvsp[0].arithExpr));}
#line 1996 "y.tab.cpp"
    break;

  case 61:
#line 308 "parser.yacc"
                                        {(yyval.arithBiOpExpr)=A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos,(yyvsp[-1].op),(yyvsp[-2].arithExpr),(yyvsp[0].arithExpr));}
#line 2002 "y.tab.cpp"
    break;

  case 62:
#line 309 "parser.yacc"
                                        {(yyval.arithBiOpExpr)=A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos,(yyvsp[-1].op),(yyvsp[-2].arithExpr),(yyvsp[0].arithExpr));}
#line 2008 "y.tab.cpp"
    break;

  case 63:
#line 311 "parser.yacc"
                   {(yyval.exprUnit)=A_NumExprUnit((yyvsp[0].tokenNum)->pos, (yyvsp[0].tokenNum)->num);}
#line 2014 "y.tab.cpp"
    break;

  case 64:
#line 312 "parser.yacc"
              {(yyval.exprUnit)= A_IdExprUnit((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);}
#line 2020 "y.tab.cpp"
    break;

  case 65:
#line 313 "parser.yacc"
                        {(yyval.exprUnit) = A_ArithExprUnit((yyvsp[-2].pos),(yyvsp[-1].arithExpr));}
#line 2026 "y.tab.cpp"
    break;

  case 66:
#line 314 "parser.yacc"
                   {(yyval.exprUnit)=A_CallExprUnit((yyvsp[0].fnCall)->pos,(yyvsp[0].fnCall));}
#line 2032 "y.tab.cpp"
    break;

  case 67:
#line 315 "parser.yacc"
                                         {(yyval.exprUnit) = A_ArrayExprUnit((yyvsp[-3].leftVal)->pos,A_ArrayExpr((yyvsp[-3].leftVal)->pos,(yyvsp[-3].leftVal),(yyvsp[-1].indexExpr)));}
#line 2038 "y.tab.cpp"
    break;

  case 68:
#line 316 "parser.yacc"
                       {(yyval.exprUnit) =A_MemberExprUnit((yyvsp[0].memberExpr)->pos, (yyvsp[0].memberExpr));}
#line 2044 "y.tab.cpp"
    break;

  case 69:
#line 317 "parser.yacc"
                       {(yyval.exprUnit)=A_ArithUExprUnit((yyvsp[0].arithUExpr)->pos, (yyvsp[0].arithUExpr));}
#line 2050 "y.tab.cpp"
    break;

  case 70:
#line 319 "parser.yacc"
                                     {(yyval.fnCall) = A_FnCall((yyvsp[-3].tokenId)->pos,(yyvsp[-3].tokenId)->id,(yyvsp[-1].rightValList));}
#line 2056 "y.tab.cpp"
    break;

  case 71:
#line 321 "parser.yacc"
                                           {(yyval.arithUExpr)=A_ArithUExpr((yyvsp[0].exprUnit)->pos,A_neg,(yyvsp[0].exprUnit));}
#line 2062 "y.tab.cpp"
    break;

  case 72:
#line 324 "parser.yacc"
                                    {(yyval.memberExpr)=A_MemberExpr((yyvsp[-2].leftVal)->pos,(yyvsp[-2].leftVal),(yyvsp[0].tokenId)->id );}
#line 2068 "y.tab.cpp"
    break;

  case 73:
#line 326 "parser.yacc"
                    {(yyval.indexExpr)=A_NumIndexExpr((yyvsp[0].tokenNum)->pos,(yyvsp[0].tokenNum)->num);}
#line 2074 "y.tab.cpp"
    break;

  case 74:
#line 327 "parser.yacc"
              {(yyval.indexExpr)=A_IdIndexExpr((yyvsp[0].tokenId)->pos,(yyvsp[0].tokenId)->id);}
#line 2080 "y.tab.cpp"
    break;

  case 75:
#line 329 "parser.yacc"
                                       {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_lt,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2086 "y.tab.cpp"
    break;

  case 76:
#line 330 "parser.yacc"
                                    {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_le,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2092 "y.tab.cpp"
    break;

  case 77:
#line 331 "parser.yacc"
                                    {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_gt,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2098 "y.tab.cpp"
    break;

  case 78:
#line 332 "parser.yacc"
                                    {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_ge,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2104 "y.tab.cpp"
    break;

  case 79:
#line 333 "parser.yacc"
                                     {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_eq,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2110 "y.tab.cpp"
    break;

  case 80:
#line 334 "parser.yacc"
                                    {(yyval.comExpr)=A_ComExpr((yyvsp[-2].exprUnit)->pos,A_ne,(yyvsp[-2].exprUnit),(yyvsp[0].exprUnit));}
#line 2116 "y.tab.cpp"
    break;

  case 81:
#line 336 "parser.yacc"
                            {(yyval.boolExpr)=A_BoolBiOp_Expr((yyvsp[0].boolBiOpExpr)->pos,(yyvsp[0].boolBiOpExpr));}
#line 2122 "y.tab.cpp"
    break;

  case 82:
#line 337 "parser.yacc"
                       {(yyval.boolExpr)=A_BoolExpr((yyvsp[0].boolUnit)->pos,(yyvsp[0].boolUnit));}
#line 2128 "y.tab.cpp"
    break;

  case 83:
#line 339 "parser.yacc"
                                            {(yyval.boolBiOpExpr)=A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos,A_and,(yyvsp[-2].boolExpr),(yyvsp[0].boolExpr));}
#line 2134 "y.tab.cpp"
    break;

  case 84:
#line 340 "parser.yacc"
                                    {(yyval.boolBiOpExpr)=A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos,A_or,(yyvsp[-2].boolExpr),(yyvsp[0].boolExpr));}
#line 2140 "y.tab.cpp"
    break;

  case 85:
#line 342 "parser.yacc"
                        {(yyval.boolUnit) = A_ComExprUnit((yyvsp[0].comExpr)->pos, (yyvsp[0].comExpr));}
#line 2146 "y.tab.cpp"
    break;

  case 86:
#line 343 "parser.yacc"
                           {(yyval.boolUnit)=A_BoolExprUnit((yyvsp[-2].pos),(yyvsp[-1].boolExpr));}
#line 2152 "y.tab.cpp"
    break;

  case 87:
#line 344 "parser.yacc"
                        {(yyval.boolUnit)=A_BoolUOpExprUnit((yyvsp[0].boolUOpExpr)->pos,(yyvsp[0].boolUOpExpr));}
#line 2158 "y.tab.cpp"
    break;

  case 88:
#line 346 "parser.yacc"
                               {(yyval.boolUOpExpr)=A_BoolUOpExpr((yyvsp[-1].pos),A_not,(yyvsp[0].boolUnit));}
#line 2164 "y.tab.cpp"
    break;


#line 2168 "y.tab.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 350 "parser.yacc"

A_pos my_pos()
{
	return A_Pos(line,col);
}
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


