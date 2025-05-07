%liczba_elem1(+L,?N) - wersja naiwna
%spelniony, gdy N jest liczba elementow listy L
%---------------

%warunek konczcy rekurencje: lista pusta ma
%zero elementow

liczba_elem1([],0).

%rekurencja: liczba elementow listy L jest rowna
%dlugosci ogona tej listy plus 1

liczba_elem1([_|T],N):-
    liczba_elem1(T,N1),
    N is N1+1.
