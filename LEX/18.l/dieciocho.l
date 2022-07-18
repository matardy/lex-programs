%{
	#include <stdlib.h>
	#include <stdio.h>
%}

ABRIR ("["|"("|"{"|"<")
CERRAR ("]"|")"|"}"|">")
DIGITO ("+"|"-")?[0-9]+("."[0-9]+)?([E,e](^"+"|"-")?[0-9]+)?

%%
{ABRIR}{DIGITO},{DIGITO}{CERRAR}	{printf("SECUENCIA VALIDA %s\n", yytext);}
.+					{printf("SECUENCIA NO VALIDA %s", yytext);}
%%

int main(){
	yylex();
	return 0;
}
