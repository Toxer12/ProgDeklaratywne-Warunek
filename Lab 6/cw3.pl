%wyznaczenie stopnia wielomianu
%o wspolczynnikach liczbowych

/*
 *definicja: rekurencja struktutalna
 *
 *1) st(x)=1
 *   st(c)=0, gdzie c - liczba
 *
 *2) stopnie wielomianow zlozonych okreslamy nastepujaco:
 *st(-w)=st(w),
 *sr(w1+w2)=st(w1-w2)=max(st(w1),st(w2)),
 *st(w1*w2)=st(w1)+st(w2),
 *st(w^n)=st(w)*n (n-liczba naturalna, n>1)
 */

%st_wielomian(w,x,n)
%spelniony gdy n jest stopniem wielomianu w
%zmiennej x o wspolczynnikach liczbowych
%definicja rekurencyjna
%warunki zakonczenia rekurencji
st_wielomian(X,X,1).
st_wielomian(C,_,0):-number(C).

%rekurencja
st_wielomian(-W,X,N):-st_wielomian(W,X,N).
st_wielomian(W1+W2,X,N):-st_wielomian(W1,X,N1),
    st_wielomian(W2,X,N2),
    N is max(N1,N2).
st_wielomian(W1-W2,X,N):-st_wielomian(W1,X,N1),
    st_wielomian(W2,X,N2),
    N is max(N1,N2).
st_wielomian(W1*W2,X,N):-st_wielomian(W1,X,N1),
    st_wielomian(W2,X,N2),
    N is N1+N2.
st_wielomian(W^M,X,N):-integer(M),
    M>1,
    st_wielomian(W,X,M1),
    N is M1*M.
