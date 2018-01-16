%{
	#include<math.h>
	extern yylval;
%}

alpha [a-zA-Z]
digit [0-9]

%%
{digit}+ {yylval=atoi(yytext);return NUM;}
[\n] {return 0;}
. return yytext[0];
%%
