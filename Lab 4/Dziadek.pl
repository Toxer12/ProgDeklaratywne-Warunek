%program: dziadek

/*1*/ojciec(karol,jan).
/*2*/ojciec(karol,adam).
%ojciec(to jest ojciec, to jest dziecko).

/*3*/dziecko(tomasz,jan).
/*4*/dziecko(piotr,adam).
%Dziecko(to jest dziecko, to jest jest ojciec).

/*5*/dziadek(karol,marek).
/*6*/dziadek(X,Y):-ojciec(X,Z),dziecko(Y,Z).
%dziadek(to jest dziadek, to jest wnuk).
%dziadek(X,Y) :- gdy x jest ojcem z to dziecko z czyli y jest wnukiem x
