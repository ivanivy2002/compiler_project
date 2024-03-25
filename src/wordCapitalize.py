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

capitalized_words = [word.capitalize() for word in words]
print(capitalized_words)
