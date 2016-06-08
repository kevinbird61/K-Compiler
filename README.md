# K-Compiler
## Author
 - Kevin Chiu , `kevinbird61@gmail.com`
  - Welcome to fork this K-compiler , and revise its memory usage.
  - If you're willing , I'll invite you to join K-compiler.

## Now Support 
 - You can see in the test file : `src/test.c`

## PreStart
 - `sudo apt-get install flex` : to get lex
 - `sudo apt-get install bison` : to get GNU version of yacc

## How to build a compiler?
### Step 1
Build a Lexical rule to make the original text to token.
### Step 2
Build a Parser rule to make the program be reduce to a Non-terminal symbol.
### Step 3 
Using the parse_rule.y to output the assembly code in MIPS.
### Step 4 
Testing the run_compile.s in MIPS.

###### Relative-code
 - `lex_rule.lex` : for lexer
 - `parse_rule.y` : for parser
 - `Makefile` : makefile for K-compiler
 - `test.c` : for test file (C-like language)
 - `run_compile.s` : for the output assembly code

###### Regular Expression Rule
| Character | Definition |
| ---	|	--- |
| `A-Z`,`0-9`,`a-z` | Construct part's of character and integer |
| . | Match to every character except `\n` |
| - | Use to define the range. `Ex: A-z` |
| [] | a set of character. Match any arbitrarily character inside the set. |
| [^...] |  Dismatch any arbitrarily character inside the set. |
| `a*` | Match a^n times, which n >= 0 |
| `a+` | Match a^n times, which n >= 1 |
| `a?` | Match a^n times, which n = 0 or 1 |
| `a$` | Match all the strings that have `...a`, which a is the end. |
| `a{...}` | Define a's appearence times. Ex : `A{1,3}` means that `A` maybe show up for 1 or 3 times. |
| `\` |  Escape character , only using the character's meaning, rather than using it's special purpose. |
| `^` | Negative.|
| `|` | Represent *or* |
| `/` | Match the string(char) before |
| `()` | Separate and group each other |

## How to compile?
 - When you need to check your lex , you can compile it and test:
  - `lex <filename>.lex` : get lex.yy.c .
  - `gcc lex.yy.c -lfl ` + (optional)`-o <output executable file>` : If you don't give the output file name, execute file will be `a.out` .
 - When you want to build K-compiler , using the command:
  - `make` : to make the execute file - `run_compile`
  - `./run_compile test.c` : translate the test.c to MIPS (run_compile.s)
    - Here , you can replace your file with test.c , to make your assembly code.

# Some Supplement
1. [Helpful markdown for git README.md](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
