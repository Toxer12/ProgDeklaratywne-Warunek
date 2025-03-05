% program:klocki_2
% baza wiedzy o ukladzie klockow
% definiowane predykaty
% na/2
% pod/2
% miedzy/3
% ===


%na(x,y)
%opis spelniony gdy klocek x lezy bezposrednio na klocku y
%pod(x,y)
%opis spelniony gdy klocek x lezy bezposrednio pod klockiem y
%miedzy(x,y,z)
%opis spelniony gdy klocek x lezy miedzy klockami y i z
%===na/2
na(c,a).
na(c,b).
na(d,c).
pod(X,Y):-na(Y,X).
miedzy(X,Y,Z):-na(Z,X),na(X,Y).
miedzy(X,Y,Z):-na(Y,X),na(X,Z).
%===na/2

/*
 * informacje o budowie programu:
 * program sklada z 6 klauzul
 * program zawiera 3 definicje relacji
 * sa to relacje na/2 pod/2 miedzy/3
 * definicja relaccji na/2 sklada z
 * 3 klauzul ktore sa faktami
 * definicja relacji pod/2 sklada sie z 1 klauzuli
 * ktora jest regula
 * definicja relacji miedzy/3 sklada sie
 * z 2 klauzul ktore sa regulami
 */

