%{
	#include<stdio.h>
	#include<stdlib.h>
%}

lower [a-z]
upper [A-Z]

%%
{lower} {printf("%c",'a'+((*yytext-'a'+5)%26));}
{upper} {printf("%c",'A'+((*yytext -'A'+5)%26));}
. ;
%%

void main()
{
	yylex();
}