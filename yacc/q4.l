alpha [a-zA-Z]
digit [0-9]

%%
[ \t\n]
if return IF;
{digit}+ return NUM;
{alpha}({alpha}|{digit})* return ID;
"<=" return LE;
">=" return GE;
"==" return EQ;
"!=" return NE;
"&&" return AND;
"||" return OR;
. return yytext[0];
%%