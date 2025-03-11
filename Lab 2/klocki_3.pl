/* definujemy relacje nad(X,Y) spelniona gdy klocek x lezy nad klockiem y
(niekoniecznie bezposrednio) */

na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).
/* czy klocek d lezy nad b? */
