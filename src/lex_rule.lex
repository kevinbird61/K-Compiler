%{
/* Global variable and Declaration */
#include "header.h"
#include "tok.h"
int yyerror(char *s);
int yyerror();
%}

/* For Definition */
DIGIT [1-9]*[0-9]+
identifier [i][d][A-Z][a-z]*
%%

[ ]*int[ ]+ { return INT; }
[ ]*char[ ]+ { return CHAR;}

[/][/].* { printf("<comment> : %s\n",yytext); /* But don't need to output anything */}
[\n] { 
	printf("<now in Line : %d > \n",yylineno);
	// Record and Increase for the line number
	yylineno++;
}

{DIGIT}  { yylval.int_val = atoi(yytext); return NUM;}
[ ]*[-]{DIGIT} { yylval.int_val = atoi(yytext); return NUM;}
{identifier}+ { yylval.str = new std::string(yytext); return ID;}
["][a-zA-z]["] { 
	yylval.int_val = (int)(yytext[1]); // Turn it into integer
	return NUM; /* Take char and int equally */ 
	}

"(" { yylval.str = new std::string(yytext); return LEFT_PARENTHESE;}
")" { yylval.str = new std::string(yytext); return RIGHT_PARENTHESE;}
";" { yylval.str = new std::string(yytext); return SEMICOLON;}
"," { yylval.str = new std::string(yytext); return DOT;}
"{" { yylval.str = new std::string(yytext); return LEFT_BRACE;}
"}" { yylval.str = new std::string(yytext); return RIGHT_BRACE;}
"[" { yylval.str = new std::string(yytext); return LEFT_BUCKET;}
"]" { yylval.str = new std::string(yytext); return RIGHT_BUCKET;}

[ ]*[+][ ]* { return B_PLUS; }
[ ]*[-][ ]* { return B_MINUS;}
[ ]*[*][ ]* { return B_MULT;}
[ ]*[/][ ]* { return B_DIVIDE;}
[ ]*[=][=][ ]* { return B_EQUAL;}
[ ]*[=][ ]* { return B_ASSIGN;}
[ ]*[!] { return U_NOT;}
[ ]*[!][=][ ]* { return B_NOT_EQUAL;}
[ ]*[&][&][ ]* { return B_AND;}
[ ]*[|][|][ ]* { return B_OR;}
[ ]*[>][ ]* { return B_LARGER;}
[ ]*[<][ ]* { return B_SMALLER;}
[ ]*[>][=][ ]* { return B_NLESS_THAN;}
[ ]*[<][=][ ]* { return B_NLARGER_THAN;}

[ ]*while[ ]* { return WHILE;}
[ ]*break[ ]* { return BREAK;}
[ ]*else[ ]* { return ELSE;}
[ ]*if[ ]* { return IF;}
[ ]*return[ ]* { return RETURN;}
[ ]*print[ ]* { return PRINT;}
[ ]*read[ ]* { return READ;}

[ \t\0]* { /* Ignore these token */ };

. { printf("<Error Input>\n");}

%%
