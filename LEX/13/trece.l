%{
int mum_el, num_ella;
%}
%%
el    {num_el++; REJECT;}
ella  {num_ella++; REJECT;}
\n    |

.     ;
%%
int main()
{
yylex();
printf("Número de el independientes %d\n", num_el}
printf("Número de el en ellas %d\n", num_ella}
return 0;
}

