%{
	#include<stdio.h>
	#include<ctype.h>
	
	int i;
%}

keyword main|int|scanf|printf|if|else

%%
{keyword} {for(i=0;i<yyleng;i++)
printf("%c",toupper(yytext[i]));}
%%

void main()
{
	yyin=fopen("q1.l","r");
	yylex();
}

int yywrap()
{
	return 1;
}