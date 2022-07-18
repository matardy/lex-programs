%{
#include<stdlib.h>
%}
%%
[0-9]+ printf("Numero \n"); 
[a-zA-Z][a-zA-Z0-9]* printf("Identificador \n");
%%
int main()
{
	yylex();
	
	
	return 0;
}
