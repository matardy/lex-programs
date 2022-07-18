%{
#include <stdio.h>
int ContadorTokens = 0;
%}
%%
[a-zA-Z]+ {printf("%d PALABRA \"%s\"\n", ++ContadorTokens, yytext);}
[012345678]+     {printf("%d NUMERO \"%s\"\n", ++ContadorTokens, yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("%d IDENTIFICADOR BASICA \"%s\"\n", ++ContadorTokens, yytext);}
%%
int main()
{
        yylex();
        return 0;
}
