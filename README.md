# K-Compiler
Collocate with compiler tutorial
## PreStart
`sudo apt-get install flex` : to get lex

## How to build a compiler?
### Step 1
Build a Lexical rule to make the original text to token.
###### Relative-code
lex_rule.lex
lex.yy.c
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

###### How to compile?
`lex <filename>.lex` : get lex.yy.c .

`gcc lex.yy.c -lfl ` + (optional)`-o <output executable file>` : If you don't give the output file name, execute file will be `a.out` .



# Some Supplement
1. [Helpful markdown for git README.md](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
