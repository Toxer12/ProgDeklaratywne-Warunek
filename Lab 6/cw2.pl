%rozpoznwanie wielomianow o jednej zmiennej
%o wpolczynnikach liczbowych

/*
 * Definicja: rekurencja strukturalna
 *
 * 1) x jest wielomianem zmiennej x
 * c-liczba jest wielomianem dowolnej zmiennej
 *
 * 2) jezeli w, w1, w2 sa wielomianami zm. x, to
 * -2, w1+w2, w1-w2, w1*w2, w^n (n-liczba naturalna)
 * sa wielomianami zmiennej x
 */

%wielomiany(w,x)
%spelniony gdy w jest wielomianem zmiennej x
%o wspolczynnikach liczbowych
%definicja rekurencji
%
%warynki zakonczenia rekurencji
wielomian(X,X).
wielomian(C,_):-number(C).

%rekurencja
wielomian(-W,X):-wielomian(W,X).
wielomian(W1+W2,X):-wielomian(W1,X),
    wielomian(W2,X).
wielomian(W1-W2,X):-wielomian(W1,X),
    wielomian(W2,X).
wielomian(W1*W2,X):-wielomian(W1,X),
    wielomian(W2,X).
wielomian(W^N,X):-integer(N),
    N>1,
    wielomian(W,X).
