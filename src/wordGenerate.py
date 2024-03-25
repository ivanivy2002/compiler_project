def capitalize_first_letter(word):
    if len(word) > 0:
        return word[0].upper() + word[1:]
    else:
        return word

words = [
    "pos", "program", "programElementList", "programElement", "arithExpr",
    "exprUnit", "structDef", "varDeclStmt", "fnDeclStmt", "fnDef", "type",
    "varDecl", "varDef", "rightVal", "boolExpr", "arithBiOpExpr", "arithUExpr",
    "fnCall", "indexExpr", "arrayExpr", "memberExpr", "boolUnit", "boolBiOpExpr",
    "boolUOpExpr", "comExpr", "leftVal", "assignStmt", "rightValList",
    "varDefScalar", "varDefArray", "varDeclScalar", "varDeclArray", "varDeclList",
    "paramDecl", "fnDecl", "codeBlockStmt", "ifStmt", "whileStmt", "callStmt",
    "returnStmt", "codeBlockStmtList", "tokenId", "tokenNum"
]

capitalized_words = [capitalize_first_letter(word) for word in words]
cap = capitalized_words
# for i in range(len(capitalized_words)):
#     print(f"%type <{words[i]}> {capitalized_words[i]}")
# 删除Pos
cap = cap[1:]
# 删除tokenId, tokenNum
cap = cap[:-2]
for i in range(len(cap)):
    print(f"//{i+1}")
    print(f"{cap[i]}:")