%{
	#include <stdlib.h>
	#include <stdio.h>

	int number_1, number_2;
%}

number_sequence [0-9]*

%%

{number_sequence}[0|2|4|6|8]	{
					printf("Numero par [%d]", yyleng);
					return atoi(yytext);
				}

{number_sequence}[1|3|5|7|9]	{
					printf("Numero impar [%d]", yyleng);
					return atoi(yytext);
				}

%%

int yywrap(){
	return 1;
}

int main(){
	printf("\nIngrese un numero par y un numero impar\n");
	number_1 = yylex();
	number_2 = yylex();
	int diff = number_1 - number_2;
	if(diff%2!=0)
		printf("\nSe verificaron sus entradas para la correccion, \nResultado: Correcto\n");
	else
		printf("\nSe verificaron sus entradas para la correccion, \nResultado: Incorrecto\n");
	return 1;
}

