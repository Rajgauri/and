%{
	int count=0;
%}

%%
.*com { count=count+1;ECHO;}
. ;
%%

void main()
{
	yylex();
	printf("\ncount=%d ",count);
}