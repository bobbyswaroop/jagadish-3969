%{
#include<stdio.h>
#include"2nd.tab.h"
void yyerror(char *);
extern int yylval;
%}
%%
[0-9]+ 		{yylval=atoi(yytext); return INT;}
[-*+/\n]		{return *yytext;}
[/)/(]		{return *yytext;}
. 			{yyerror("syntax error");}
%%
int yywrap()
{
return 1;
}
