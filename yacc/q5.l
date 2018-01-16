alpha [a-zA-Z]
digit [0-9]

%%
[ \t\n]
if return IF;
switch return SWITCH;
case return CASE;
default return DEFAULT;
break return BREAK;
while return WHILE;
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