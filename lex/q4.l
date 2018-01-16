%{
	int line=1;
%}

%%
.*\n {printf("%3d %s",line,yytext);line++;}
%%

void main()
{
	yylex();
}