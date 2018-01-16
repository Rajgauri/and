%{
	#include<stdio.h>
	#include<string.h>
	char p[100],q[100],fname[100];
	FILE *ff,*fr;
%}

word [a-zA-Z]+
eol \n

%%
{word} {if(strcmp(p,yytext)==0)
fprintf(fr,"%s",q);
else
fprintf(fr,"%s",yytext);}
{eol} {fprintf(fr,"%s",yytext);}
. {fprintf(fr,"%s",yytext);}
%%

void main(int argc,char** argv)
{
	strcpy(fname,argv[1]);
	strcpy(p,argv[2]);
	strcpy(q,argv[3]);
	ff=fopen("text.txt","r");
	fr=fopen("text1.txt","w");
	yyin=ff;
	yylex();
}