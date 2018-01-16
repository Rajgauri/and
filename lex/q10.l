%{
	#include<stdio.h>
	int a=0,s=0,m=0,d=0,ob=0,cb=0;
	int flaga=0,flags=0,flagm=0,flagd=0;
%}

id [a-zA-Z]+

%%
{id} {printf("%s is an identifier ",yytext);}
[+] {a++;flaga=1;}
[-] {s++;flags=1;}
[*] {m++;flagm=1;}
[/] {d++;flagd=1;}
[(] {ob++;}
[)] {cb++;}
%%

void main()
{
	printf("enter expression\n");
	yylex();
	if(ob-cb==0)
	{
		printf("\nvalid ");
	}
	else
	{
		printf("\ninvalid ");
	}
	printf("add=%d,sub=%d,mul=%d,div=%d",a,s,m,d);
	printf("\noperator:\n");
	if(flaga)
	{
		printf("+");
	}
	if(flags)
	{
		printf("-");
	}
	if(flagm)
	{
		printf("*");
	}
	if(flagd)
	{
		printf("/");
	}
}