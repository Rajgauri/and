%{
	#include<stdio.h>
	#include<stdlib.h>	
%}

%token SWITCH CASE DEFAULT BREAK IF WHILE AND OR LE GE NE EQ ID NUM THEN
%right '='
%left AND OR
%left '>' '<' LE GE EQ NE
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'
%%

S:ST {printf("\naccepted ");exit(0);};
ST: SWITCH'('ID')''{' B'}';
B:C
|C D
;
C: C C
| CASE NUM ':' ST1 BREAK ';'
;
D: DEFAULT ':' ST1 BREAK ';'
|DEFAULT ':' ST1 
;
ST1: WHILE'('E2')' '{'E'}' ';'
|IF '('E2')' THEN E';'
|ST1 ST1
|E ';'
;
E2: E'<'E
|E'>'E
|E LE E
|E GE E
|E EQ E
|E NE E
|E AND E
|E OR E
|ID
|NUM
;
E:ID'='E
|E'+'E
|E'-'E
|E'*'E
|E'/'E
|E'<'E
|E'>'E
|E LE E
|E GE E
|E EQ E
|E NE E
|E AND E
|E OR E
|ID
|NUM
;

%%

#include"lex.yy.c"
void main()
{
	printf("enter exp\n");
	yyparse();
}


