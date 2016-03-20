# K-Compiler
Collocate with compiler tutorial

## How to build a compiler?
### Step 1
Build a Lexical rule to make the original text to token.
###### Relative-code
lex_rule.lex
lex.yy.c
###### How to compile?
`lex <filename>.lex` : get lex.yy.c .

`gcc lex.yy.c -lfl ` + (optional)`-o <output executable file>` : If you don't give the output file name, execute file will be `a.out` .



# Some Supplement
1. [Helpful markdown for git README.md](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
