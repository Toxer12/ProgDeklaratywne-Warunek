rodzic(ewa,ania).
rodzic(piotr,ewa).
%rodzic/2 rodzic(rodzic,dziecko).

przodek(X,Y):-rodzic(Y,X).
przodek(X,Y):-rodzic(Y,Z), rodzic(Z,X).
