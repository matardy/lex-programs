%{
#include<stdio.h>
#include<stdlib.h>
%}
%% 
0(0|1)0* printf("Secuencia Valida \n"); 
.	printf("Secuencia no valida\n");

%%
int main(){
	yylex();
	return 0; 

}
