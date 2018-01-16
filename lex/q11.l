%{
	#include<stdio.h>
	int count=0;
%}

%%
.*"ab" {count++;}
%%

void main()
{
	yylex();
	printf("\ncount=%d\n",count);
}