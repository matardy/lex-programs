%{
	#include <stdlib.h>
	#include <stdio.h>
%}

%%
[+-]?(i|I){1,3}	{printf("ES UN NUMERO ROMANO %s \n", yytext);}

.+		{printf("NO ES UN NUMERO ROMANO %s \n", yytext);}
%%

int main(){
	yylex();
	return 0;
}
