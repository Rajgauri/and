%{
	int k=0;
	char *a;

%}

alpha [a-zA-Z]

%%
{alpha}+ {if(yyleng>k)
{k=yyleng;
a=yytext;}
}
. ;
%%

void main()
{
	yylex();
	a[k]='\0';
	for(int i=k-1;i>=0;i--)
	{
		printf("%c",a[i]);

	}
}