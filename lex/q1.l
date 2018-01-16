%{
	int count=0;
%}

alpha [a-zA-Z]
digit [0-9]
space [ \t\n]
start [aA]

%%
{start} {count=count+1; ECHO;}
{space}(a|A)({alpha}|{digit})* {count=count+1;ECHO;}
. ;
%%

void main()
{
	yylex();
	printf("\ncount=%d",count);
}