/* Declaraciones */ 
%{
#include <stdio.h> // Necesario para realizar printf
// Reconoce un string, lo reescribe y le cambie el color
%}

/* Reglas */ 
%% 
pare printf("\033[0;32m pare \033[0m");

inicio printf("\033[0;33m inicio \033[0m");
%% 

/* Codigo (main) */ 
int main(){
yylex();
return 0;
}
