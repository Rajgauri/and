%{
	#include<stdio.h>
	#include<string.h>
	int num_cmt=0,id=0;
	char str[1000];
	FILE *fout;

%}

%%
\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
.*[^\n] { num_cmt=num_cmt+1;
	strcpy(str,yytext);
	fprintf(fout,"%s",str);
	fprintf(fout,"%s","\n");
}
%%

void main()
{
	fout=fopen("text.txt","w");
	yylex();

}