%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>

%}

%token NUM SINH COSH TANH SIN COS TAN LOG LOG10 POW EXP
%right '='
%left '+' '-'
%left '*' '/'
%right UMINUS

%%
S : ST {printf("\naccepted , %f ",$$);exit(0);};
ST : ST '+' ST {$$=$1+$3;}
| SINH'('ST')' {$$=sinh($3*3.14/180);}
|NUM {$$=$1;}
;
%%

#include "lex.yy.c"
void main()
{
	printf("enter exp:\n");
	yyparse();
} 
yywrap(){}
yyerror( char* a)
{
	printf(" error ");
}