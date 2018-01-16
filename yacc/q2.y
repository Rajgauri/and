%{
	#include<stdio.h>
	#include<stdlib.h>	
%}

%token ID NUM SELECT FROM WHERE AND OR NOT LE GE NE 
%right '='
%left '>' '<' LE GE NE
%left AND OR
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'

%% 
S : ST {printf("\naccepted ");exit(0);}
ST : SELECT EXP FROM EXP2 ';'
|SELECT EXP FROM EXP2 WHERE COND ';'
;
EXP : EXP','EXP
|ID
|'*'
;
EXP2 : ST
|ID
;
COND : E3 AND COND
|E3 OR COND
|NOT E3
|E3
;
E3 : 
|ID'='NUM
|ID'>'NUM
|ID'<'NUM
|ID LE NUM
|ID GE NUM
|ID NE NUM
;
%%

#include "lex.yy.c"
void main()
{
	printf("\nenter exp\n");
	yyparse();
}
yywrap(){}
