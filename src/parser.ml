type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | LBRACKET
  | RBRACKET
  | COLON
  | PLUS
  | MINUS
  | ASSIGN
  | CONCAT
  | STRETCH
  | EQ
  | NEQ
  | OCTDOWN
  | OCTUP
  | HALFUP
  | HALFDOWN
  | LT
  | LEQ
  | GT
  | GEQ
  | INCREASE_DURATION
  | DECREASE_DURATION
  | ASSIGN_PLUS
  | ASSIGN_MINUS
  | ASSIGN_REMOVE
  | ASSIGN_OCTUP
  | ASSIGN_OCTDOWN
  | ASSIGN_CONCAT
  | RETURN
  | IF
  | ELSE
  | WHILE
  | LOOP
  | CLOSEFILE
  | OPENFILE
  | TRUE
  | FALSE
  | TEMPO
  | STARTTRACK
  | STOPTRACK
  | LITERAL of (int)
  | ID of (string)
  | NOTE of (string)
  | REST of (string)
  | EOF
  | DEF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 58 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* LBRACKET *);
  264 (* RBRACKET *);
  265 (* COLON *);
  266 (* PLUS *);
  267 (* MINUS *);
  268 (* ASSIGN *);
  269 (* CONCAT *);
  270 (* STRETCH *);
  271 (* EQ *);
  272 (* NEQ *);
  273 (* OCTDOWN *);
  274 (* OCTUP *);
  275 (* HALFUP *);
  276 (* HALFDOWN *);
  277 (* LT *);
  278 (* LEQ *);
  279 (* GT *);
  280 (* GEQ *);
  281 (* INCREASE_DURATION *);
  282 (* DECREASE_DURATION *);
  283 (* ASSIGN_PLUS *);
  284 (* ASSIGN_MINUS *);
  285 (* ASSIGN_REMOVE *);
  286 (* ASSIGN_OCTUP *);
  287 (* ASSIGN_OCTDOWN *);
  288 (* ASSIGN_CONCAT *);
  289 (* RETURN *);
  290 (* IF *);
  291 (* ELSE *);
  292 (* WHILE *);
  293 (* LOOP *);
  294 (* CLOSEFILE *);
  295 (* OPENFILE *);
  296 (* TRUE *);
  297 (* FALSE *);
  298 (* TEMPO *);
  299 (* STARTTRACK *);
  300 (* STOPTRACK *);
    0 (* EOF *);
  305 (* DEF *);
    0|]

let yytransl_block = [|
  301 (* LITERAL *);
  302 (* ID *);
  303 (* NOTE *);
  304 (* REST *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\003\000\004\000\004\000\007\000\007\000\
\005\000\005\000\002\000\006\000\006\000\008\000\008\000\008\000\
\008\000\008\000\008\000\008\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\010\000\010\000\012\000\012\000\011\000\013\000\
\013\000\000\000"

let yylen = "\002\000\
\000\000\002\000\002\000\008\000\000\000\001\000\001\000\003\000\
\000\000\002\000\003\000\000\000\002\000\002\000\003\000\003\000\
\005\000\007\000\005\000\007\000\001\000\001\000\001\000\001\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\002\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\004\000\003\000\
\003\000\002\000\000\000\001\000\001\000\003\000\001\000\003\000\
\004\000\002\000"

let yydefred = "\000\000\
\001\000\000\000\000\000\000\000\000\000\002\000\003\000\000\000\
\000\000\007\000\000\000\000\000\011\000\000\000\000\000\009\000\
\008\000\000\000\010\000\000\000\000\000\012\000\004\000\000\000\
\000\000\000\000\000\000\000\000\021\000\000\000\023\000\024\000\
\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\050\000\000\000\014\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\035\000\036\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\048\000\016\000\
\049\000\000\000\015\000\000\000\000\000\000\000\000\000\000\000\
\000\000\025\000\026\000\000\000\000\000\046\000\000\000\000\000\
\038\000\037\000\000\000\000\000\000\000\000\000\039\000\040\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\047\000\056\000\000\000\000\000\019\000\000\000\057\000\
\000\000\000\000\018\000\020\000"

let yydgoto = "\002\000\
\003\000\006\000\007\000\011\000\018\000\020\000\012\000\033\000\
\034\000\038\000\046\000\039\000\047\000"

let yysindex = "\010\000\
\000\000\000\000\215\254\012\255\225\254\000\000\000\000\236\254\
\026\255\000\000\034\255\032\255\000\000\046\255\005\255\000\000\
\000\000\003\255\000\000\052\255\094\255\000\000\000\000\094\255\
\094\255\053\255\056\255\059\255\000\000\000\255\000\000\000\000\
\000\000\234\255\253\000\058\255\122\001\060\255\064\255\006\000\
\094\255\094\255\094\255\094\255\021\255\000\000\067\255\000\000\
\094\255\094\255\094\255\094\255\094\255\094\255\094\255\094\255\
\094\255\000\000\000\000\094\255\094\255\094\255\094\255\094\255\
\094\255\094\255\094\255\094\255\094\255\094\255\000\000\000\000\
\000\000\094\255\000\000\023\001\049\001\099\001\068\255\069\255\
\030\255\000\000\000\000\122\001\162\001\000\000\145\001\145\001\
\000\000\000\000\255\254\255\254\255\254\255\254\000\000\000\000\
\122\001\122\001\122\001\122\001\122\001\122\001\126\255\126\255\
\094\255\000\000\000\000\072\255\055\255\000\000\075\001\000\000\
\126\255\126\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\087\000\000\000\000\000\000\000\000\000\090\255\
\000\000\000\000\000\000\099\255\000\000\000\000\000\000\000\000\
\000\000\074\255\000\000\000\000\000\000\000\000\000\000\101\255\
\000\000\000\000\000\000\000\000\000\000\174\255\000\000\000\000\
\000\000\000\000\000\000\000\000\061\255\000\000\254\254\000\000\
\000\000\000\000\000\000\113\255\000\000\000\000\206\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\123\255\038\000\000\000\198\000\230\000\
\000\000\000\000\070\000\102\000\134\000\166\000\000\000\000\000\
\214\000\246\000\183\001\192\001\196\001\142\255\000\000\000\000\
\000\000\000\000\000\000\000\000\110\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\095\000\000\000\000\000\000\000\096\000\000\000\225\255\
\235\255\079\000\000\000\000\000\000\000"

let yytablesize = 717
let yytable = "\035\000\
\052\000\044\000\037\000\040\000\004\000\052\000\045\000\005\000\
\049\000\050\000\001\000\052\000\053\000\008\000\009\000\056\000\
\057\000\058\000\059\000\076\000\077\000\078\000\037\000\064\000\
\065\000\010\000\013\000\082\000\083\000\084\000\085\000\086\000\
\087\000\088\000\089\000\090\000\014\000\015\000\091\000\092\000\
\093\000\094\000\095\000\096\000\097\000\098\000\099\000\100\000\
\101\000\016\000\017\000\005\000\102\000\021\000\041\000\022\000\
\023\000\042\000\024\000\021\000\043\000\022\000\072\000\053\000\
\024\000\080\000\053\000\073\000\053\000\074\000\106\000\109\000\
\110\000\081\000\108\000\012\000\107\000\012\000\012\000\112\000\
\012\000\115\000\116\000\111\000\025\000\026\000\058\000\027\000\
\028\000\113\000\025\000\026\000\005\000\027\000\028\000\021\000\
\029\000\030\000\031\000\032\000\024\000\006\000\029\000\030\000\
\031\000\032\000\012\000\012\000\051\000\012\000\012\000\017\000\
\019\000\017\000\017\000\051\000\017\000\036\000\012\000\012\000\
\012\000\012\000\079\000\034\000\000\000\034\000\000\000\021\000\
\034\000\022\000\034\000\034\000\024\000\000\000\000\000\000\000\
\000\000\000\000\029\000\030\000\031\000\032\000\017\000\017\000\
\054\000\017\000\017\000\054\000\000\000\054\000\000\000\000\000\
\000\000\000\000\017\000\017\000\017\000\017\000\025\000\026\000\
\000\000\027\000\028\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\029\000\030\000\031\000\032\000\022\000\000\000\
\022\000\000\000\000\000\022\000\000\000\022\000\022\000\022\000\
\022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
\022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
\022\000\022\000\000\000\022\000\022\000\022\000\055\000\000\000\
\055\000\000\000\000\000\055\000\000\000\055\000\055\000\055\000\
\055\000\055\000\055\000\055\000\055\000\055\000\055\000\055\000\
\055\000\055\000\055\000\055\000\055\000\055\000\055\000\055\000\
\055\000\055\000\048\000\055\000\055\000\055\000\000\000\000\000\
\000\000\000\000\000\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\062\000\063\000\064\000\065\000\066\000\067\000\075\000\068\000\
\069\000\070\000\000\000\000\000\000\000\000\000\000\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\062\000\063\000\064\000\065\000\
\066\000\067\000\000\000\068\000\069\000\070\000\033\000\000\000\
\033\000\000\000\000\000\033\000\000\000\033\000\033\000\000\000\
\000\000\033\000\033\000\000\000\033\000\033\000\000\000\000\000\
\000\000\000\000\033\000\033\000\033\000\033\000\000\000\000\000\
\033\000\033\000\000\000\033\000\033\000\033\000\029\000\000\000\
\029\000\000\000\000\000\029\000\000\000\029\000\029\000\000\000\
\000\000\029\000\000\000\000\000\029\000\029\000\000\000\000\000\
\000\000\000\000\029\000\029\000\029\000\029\000\000\000\000\000\
\029\000\029\000\000\000\029\000\029\000\029\000\030\000\000\000\
\030\000\000\000\000\000\030\000\000\000\030\000\030\000\000\000\
\000\000\030\000\000\000\000\000\030\000\030\000\000\000\000\000\
\000\000\000\000\030\000\030\000\030\000\030\000\000\000\000\000\
\030\000\030\000\000\000\030\000\030\000\030\000\031\000\000\000\
\031\000\000\000\000\000\031\000\000\000\031\000\031\000\000\000\
\000\000\031\000\000\000\000\000\031\000\031\000\000\000\000\000\
\000\000\000\000\031\000\031\000\031\000\031\000\000\000\000\000\
\031\000\031\000\000\000\031\000\031\000\031\000\032\000\000\000\
\032\000\000\000\000\000\032\000\000\000\032\000\032\000\000\000\
\000\000\032\000\000\000\000\000\032\000\032\000\000\000\000\000\
\000\000\000\000\032\000\032\000\032\000\032\000\000\000\000\000\
\032\000\032\000\000\000\032\000\032\000\032\000\027\000\000\000\
\027\000\000\000\000\000\027\000\000\000\027\000\027\000\000\000\
\000\000\027\000\000\000\000\000\027\000\027\000\041\000\000\000\
\041\000\000\000\000\000\041\000\000\000\041\000\041\000\000\000\
\027\000\027\000\000\000\027\000\027\000\027\000\028\000\000\000\
\028\000\000\000\000\000\028\000\000\000\028\000\028\000\000\000\
\000\000\028\000\000\000\000\000\028\000\028\000\042\000\000\000\
\042\000\000\000\000\000\042\000\000\000\042\000\042\000\071\000\
\028\000\028\000\000\000\028\000\028\000\028\000\049\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\061\000\062\000\063\000\064\000\065\000\066\000\
\067\000\103\000\068\000\069\000\070\000\000\000\000\000\000\000\
\049\000\050\000\051\000\052\000\053\000\054\000\055\000\056\000\
\057\000\058\000\059\000\060\000\061\000\062\000\063\000\064\000\
\065\000\066\000\067\000\104\000\068\000\069\000\070\000\000\000\
\000\000\000\000\049\000\050\000\051\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\059\000\060\000\061\000\062\000\
\063\000\064\000\065\000\066\000\067\000\114\000\068\000\069\000\
\070\000\000\000\000\000\000\000\049\000\050\000\051\000\052\000\
\053\000\054\000\055\000\056\000\057\000\058\000\059\000\060\000\
\061\000\062\000\063\000\064\000\065\000\066\000\067\000\000\000\
\068\000\069\000\070\000\105\000\049\000\050\000\051\000\052\000\
\053\000\054\000\055\000\056\000\057\000\058\000\059\000\060\000\
\061\000\062\000\063\000\064\000\065\000\066\000\067\000\000\000\
\068\000\069\000\070\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\062\000\063\000\064\000\065\000\066\000\067\000\000\000\068\000\
\069\000\070\000\049\000\050\000\000\000\052\000\053\000\000\000\
\000\000\056\000\057\000\058\000\059\000\060\000\061\000\062\000\
\063\000\064\000\065\000\049\000\050\000\000\000\000\000\053\000\
\000\000\000\000\056\000\057\000\058\000\059\000\000\000\043\000\
\000\000\043\000\064\000\065\000\043\000\000\000\043\000\043\000\
\044\000\000\000\044\000\000\000\045\000\044\000\045\000\044\000\
\044\000\045\000\000\000\045\000\045\000"

let yycheck = "\021\000\
\003\001\002\001\024\000\025\000\046\001\008\001\007\001\049\001\
\010\001\011\001\001\000\013\001\014\001\002\001\046\001\017\001\
\018\001\019\001\020\001\041\000\042\000\043\000\044\000\025\001\
\026\001\046\001\001\001\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\003\001\006\001\060\000\061\000\
\062\000\063\000\064\000\065\000\066\000\067\000\068\000\069\000\
\070\000\004\001\046\001\049\001\074\000\002\001\002\001\004\001\
\005\001\002\001\007\001\002\001\002\001\004\001\005\001\003\001\
\007\001\045\001\006\001\008\001\008\001\006\001\003\001\103\000\
\104\000\007\001\045\001\002\001\008\001\004\001\005\001\008\001\
\007\001\113\000\114\000\105\000\033\001\034\001\000\000\036\001\
\037\001\035\001\033\001\034\001\003\001\036\001\037\001\002\001\
\045\001\046\001\047\001\048\001\007\001\003\001\045\001\046\001\
\047\001\048\001\033\001\034\001\008\001\036\001\037\001\002\001\
\018\000\004\001\005\001\003\001\007\001\022\000\045\001\046\001\
\047\001\048\001\044\000\001\001\255\255\003\001\255\255\002\001\
\006\001\004\001\008\001\009\001\007\001\255\255\255\255\255\255\
\255\255\255\255\045\001\046\001\047\001\048\001\033\001\034\001\
\003\001\036\001\037\001\006\001\255\255\008\001\255\255\255\255\
\255\255\255\255\045\001\046\001\047\001\048\001\033\001\034\001\
\255\255\036\001\037\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\045\001\046\001\047\001\048\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\001\001\030\001\031\001\032\001\255\255\255\255\
\255\255\255\255\255\255\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\019\001\020\001\021\001\022\001\
\023\001\024\001\025\001\026\001\027\001\028\001\001\001\030\001\
\031\001\032\001\255\255\255\255\255\255\255\255\255\255\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\013\001\255\255\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\023\001\024\001\255\255\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\023\001\024\001\255\255\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\023\001\024\001\255\255\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\023\001\024\001\255\255\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\023\001\024\001\255\255\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\027\001\028\001\255\255\030\001\031\001\032\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\255\255\
\255\255\012\001\255\255\255\255\015\001\016\001\001\001\255\255\
\003\001\255\255\255\255\006\001\255\255\008\001\009\001\003\001\
\027\001\028\001\255\255\030\001\031\001\032\001\010\001\011\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\028\001\003\001\030\001\031\001\032\001\255\255\255\255\255\255\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\019\001\020\001\021\001\022\001\023\001\024\001\025\001\
\026\001\027\001\028\001\003\001\030\001\031\001\032\001\255\255\
\255\255\255\255\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\028\001\003\001\030\001\031\001\
\032\001\255\255\255\255\255\255\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\027\001\028\001\255\255\
\030\001\031\001\032\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\027\001\028\001\255\255\
\030\001\031\001\032\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\019\001\020\001\021\001\022\001\
\023\001\024\001\025\001\026\001\027\001\028\001\255\255\030\001\
\031\001\032\001\010\001\011\001\255\255\013\001\014\001\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\010\001\011\001\255\255\255\255\014\001\
\255\255\255\255\017\001\018\001\019\001\020\001\255\255\001\001\
\255\255\003\001\025\001\026\001\006\001\255\255\008\001\009\001\
\001\001\255\255\003\001\255\255\001\001\006\001\003\001\008\001\
\009\001\006\001\255\255\008\001\009\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  LBRACKET\000\
  RBRACKET\000\
  COLON\000\
  PLUS\000\
  MINUS\000\
  ASSIGN\000\
  CONCAT\000\
  STRETCH\000\
  EQ\000\
  NEQ\000\
  OCTDOWN\000\
  OCTUP\000\
  HALFUP\000\
  HALFDOWN\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  INCREASE_DURATION\000\
  DECREASE_DURATION\000\
  ASSIGN_PLUS\000\
  ASSIGN_MINUS\000\
  ASSIGN_REMOVE\000\
  ASSIGN_OCTUP\000\
  ASSIGN_OCTDOWN\000\
  ASSIGN_CONCAT\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  LOOP\000\
  CLOSEFILE\000\
  OPENFILE\000\
  TRUE\000\
  FALSE\000\
  TEMPO\000\
  STARTTRACK\000\
  STOPTRACK\000\
  EOF\000\
  DEF\000\
  "

let yynames_block = "\
  LITERAL\000\
  ID\000\
  NOTE\000\
  REST\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                 ( [], [] )
# 441 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.program) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 449 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.program) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 457 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 43 "parser.mly"
     ( { fname = _1;
   formals = _3;
   locals = List.rev _6;
   body = List.rev _7 } )
# 470 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
                  ( [] )
# 476 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 51 "parser.mly"
                  ( List.rev _1 )
# 483 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
                         ( [_1] )
# 490 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "parser.mly"
                         ( _3 :: _1 )
# 498 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                     ( [] )
# 504 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 59 "parser.mly"
                     ( _2 :: _1 )
# 512 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 62 "parser.mly"
               ( _2 )
# 519 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
                   ( [] )
# 525 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 66 "parser.mly"
                   ( _2 :: _1 )
# 533 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 69 "parser.mly"
              ( Expr(_1) )
# 540 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 70 "parser.mly"
                     ( Return(_2) )
# 547 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 71 "parser.mly"
                            ( Block(List.rev _2) )
# 554 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 72 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 562 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 73 "parser.mly"
                                            ( If(_3, _5, _7) )
# 571 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 74 "parser.mly"
                                  ( While(_3, _5) )
# 579 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 75 "parser.mly"
                                            ( Loop(_3, _5, _7) )
# 588 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 78 "parser.mly"
                     ( Literal(_1) )
# 595 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 79 "parser.mly"
                     ( Id(_1) )
# 602 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 80 "parser.mly"
                     ( Note(_1) )
# 609 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 81 "parser.mly"
                     ( Rest(_1) )
# 616 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Binop(_1, Plus,   _3) )
# 624 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                     ( Binop(_1, Minus,   _3) )
# 632 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 640 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 648 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 656 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                      ( Binop(_1, Leq, _3) )
# 664 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 88 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 672 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 89 "parser.mly"
                      ( Binop(_1, Geq, _3) )
# 680 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                     ( Binop(_1, Concat, _3) )
# 688 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
                       ( Assign(_1, _3) )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                ( Binop(_1, Plus, Literal(1)))
# 703 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
                  ( Binop(_1, Minus, Literal(1)))
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
                      (Binop(_1,Octup,_3))
# 718 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "parser.mly"
                        ( Binop(_1, Octdown, _3))
# 726 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                                ( Binop(_1, IncDuration, _3))
# 734 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                                ( Binop(_1, DecDuration, _3))
# 742 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                          ( Assign(_1, Binop(_1,Plus,_3) ))
# 750 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                           ( Assign(_1, Binop(_1,Minus,_3) ))
# 758 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                           ( Assign(_1, Binop(_1,Octup,_3) ))
# 766 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                             ( Assign(_1, Binop(_1,Octdown,_3) ))
# 774 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
                            ( Assign(_1, Binop(_1,Concat,_3) ))
# 782 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "parser.mly"
                            ( Binop(_1, Stretch, _3) )
# 790 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 104 "parser.mly"
                                 ( Call(_1, _3) )
# 798 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                       ( _2 )
# 805 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 106 "parser.mly"
                                  ( Array(_2) )
# 812 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'index_opt) in
    Obj.repr(
# 107 "parser.mly"
                 ( Index(_1,_2) )
# 820 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 111 "parser.mly"
                  ( [] )
# 826 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 112 "parser.mly"
                  ( List.rev _1 )
# 833 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                            ( [_1] )
# 840 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                            ( _3 :: _1 )
# 848 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'indices) in
    Obj.repr(
# 119 "parser.mly"
          ( List.rev _1 )
# 855 "parser.ml"
               : 'index_opt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 122 "parser.mly"
                            ( [_2] )
# 862 "parser.ml"
               : 'indices))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'indices) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 123 "parser.mly"
                                      (_3 :: _1)
# 870 "parser.ml"
               : 'indices))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
