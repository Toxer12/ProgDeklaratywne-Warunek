%liczba_elem2(+L,?N)
%spelniony gdy N jest liczba elemntow listy L
%---------------

liczba_elem2(L,N):-liczba_elem_ak(L,0,N).

%liczba_elem_ak(+L,+A,?N) - wersja z akumulatorem
%spelniony gdy N jest liczba elementow listy L
%plus zawartosc akumulatora A
%-------------------

%warunek konczacy rekurencje: dla listy pustej
%N=A

liczba_elem_ak([],A,A).

%rekurencja: N jest rowne liczbie elementow ogona
%listy L + zawartosc A powiekszona o 1

liczba_elem_ak([_|T],A,N):-
    A1 is A+1,
    liczba_elem_ak(T,A1,N).
