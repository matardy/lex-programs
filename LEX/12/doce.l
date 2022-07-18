%{
int num_el,num_ella;
%}
%%
el   num_el++;
ella num_ella++;
\n   |
.    ;
%%
int main()
{
yylex();
printf("Número de el independientes %d\n", num_el);
printf("Número de el en ella %d\n", num_ella);
return 0;

}

