%{
#include<stdio.h>
#include"3rd.tab.h"
void yyerror(char *);
extern int yylval;
%}
%%
[0-9]+ 		{yylval=atoi(yytext); return INT;}
[-*+/\n\(\)] 	{return *yytext;}
. 			{yyerror("syntax error");}
%%
int yywrap()
{
return 1;
}