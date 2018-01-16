ALPHA [a-zA-Z]
DIGIT [0-9]

%%
[ \t\n]
SELECT|select return SELECT;
FROM|from return FROM;
WHERE|where return WHERE;
AND|and return AND;
OR|or return OR;
NOT|not return NOT;
{ALPHA}({ALPHA}|{DIGIT})* return ID;
{DIGIT}+ return NUM;
"<=" return LE;
">=" return GE;
"!=" return NE;
. return yytext[0];
%%