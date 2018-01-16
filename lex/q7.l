%{
	#include<stdio.h>
	int counts=0,countp=0;

%}

%%
"scanf" {counts=counts+1;
fprintf(yyout,"%s","writef");}
"printf" {countp=countp+1;
fprintf(yyout,"%s","readf");}
%%

void main()
{
	yyin=fopen("text.txt","r");
	yyout=fopen("text1.txt","w");
	yylex();
	printf("\ncount of scanf=%d, printf=%d ",counts,countp);
}