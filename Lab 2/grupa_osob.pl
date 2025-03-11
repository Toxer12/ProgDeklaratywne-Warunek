%program grupa osob
% baza wiedzy o grupie osob i ich upodobaniach
% definiowane predykaty
% lubi/2
% opis lubi(X,Y) spelniony gdy X lubi osobe Y
% jarosz/1
% opis jarosz(x) spelniony gdy x jest jaroszem
% nie_palacy/1
% opis nie_palacy(x) spelniony gdy x nie pali papierosow
% lubi_czytac/1
% opis lubi_czytac(x) spelny gdy x lubi czytac ksiazki
% uprawia_sport/1
% opis uprawia_sport(x) spelniony gdy x uprawia sport
% -------------
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
nie_palacy(ola).
nie_palacy(ewa).
nie_palacy(jan).
lubi_czytac(ola).
lubi_czytac(iza).
lubi_czytac(piotr).
uprawia_sport(ola).
uprawia_sport(jan).
uprawia_sport(piotr).
uprawia_sport(pawel).
lubi(ola,X):-jarosz(X),uprawia_sport(X).
lubi(ewa,X):-nie_palacy(X),jarosz(X).
lubi(iza,X):-lubi_czytac(X).
lubi(iza,X):-uprawia_sport(X),nie_palacy(X).
lubi(jan,X):-uprawia_sport(X).
lubi(piotr,X):-jarosz(X),uprawia_sport(X).
lubi(piotr,X):-lubi_czytac(X).
lubi(pawel,X):-jarosz(X),uprawia_sport(X),lubi_czytac(X).
/*
 * program sklada sie z 22 klauzul 14faktow i 8 regul
 * program sklada z 5 definicji relacji
 */
