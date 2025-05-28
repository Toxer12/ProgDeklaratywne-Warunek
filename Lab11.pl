%Program dla budowlancow


%pracownik/3 lista pracownikow
%pracownik(imie, specjalizacja, stawkagodzinowa).
%pracownik(X, elektryk, _).
pracownik(jan, murarz, 50).
pracownik(anna, elektryk, 60).
pracownik(tomasz, hydraulik, 55).
pracownik(kasia, cieœla, 52).
pracownik(piotr, malarz, 45).

%material/3 lista materialow
%material(material, cena, jednostka).
%material(cegla,X,_).
material(cegla, 1, sztuka).
material(farba, 80, puszka).
material(drewno, 100, deska).
material(przewod, 5, metr).

%Zadanie/3 lista zadan
%zadanie(nazwa zadania, wymagana specjalizacja, czas wykonania
%zadania).
%zadanie(instalacja_wody,X,Y).
zadanie(murowanie_sciany, murarz, 20).
zadanie(instalacja_elektryki, elektryk, 15).
zadanie(instalacja_wody, hydraulik, 18).
zadanie(malowanie_scian, malarz, 10).
zadanie(budowa_dachu, cieœla, 25).

%uzycia_materialu/3 lista zuzycia materialu do zadan
%uzycie_materialu(zadanie, material, ilosc).
%uzycie_materialu(malowanie_scian,X,_).
uzycie_materialu(murowanie_sciany, cegla, 1000).
uzycie_materialu(murowanie_sciany, cement, 10).
uzycie_materialu(instalacja_elektryki, przewod, 50).
uzycie_materialu(instalacja_wody, przewod, 30).
uzycie_materialu(malowanie_scian, farba, 5).
uzycie_materialu(budowa_dachu, drewno, 20).

%predykat sprawdzajacy predyspozycje pracownika do zadania
%przypisz_pracownika(X,instalacja_elektryki).
przypisz_pracownika(Pracownik, Zadanie) :-
    pracownik(Pracownik, Umiejetnosc, _),
    zadanie(Zadanie, Umiejetnosc, _).

%koszt robocizny dla zadania
%koszt_robocizny(budowa_dachu, X).
koszt_robocizny(Zadanie, Koszt) :-
    zadanie(Zadanie, Umiejetnosc, Godziny),
    pracownik(_, Umiejetnosc, Stawka),
    Koszt is Godziny * Stawka.

%koszt materia³ów dla zadania
%koszt_materialow(instalacja_wody,X).
koszt_materialow(Zadanie, Koszt) :-
    findall(Cz, (
        uzycie_materialu(Zadanie, Material, Ilosc),
        material(Material, CenaJednostkowa, _),
        Cz is Ilosc * CenaJednostkowa
    ), Lista),
    sum_list(Lista, Koszt).

%laczny koszt zadania
%koszt_zadania(murowanie_sciany,X).
koszt_zadania(Zadanie, KosztCalkowity) :-
    koszt_robocizny(Zadanie, KR),
    koszt_materialow(Zadanie, KM),
    KosztCalkowity is KR + KM.

%predykat licz¹cy ³¹czny koszt ca³ego projektu
%koszt_projektu(X).
koszt_projektu(Koszt) :-
    findall(K, (
        zadanie(Z, _, _),
        koszt_zadania(Z, K)
    ), Lista),
    sum_list(Lista, Koszt).

%predykat pokazuj¹cy szczegó³y zadania
%sczegoly_zadania(murowanie_sciany).
szczegoly_zadania(Zadanie) :-
    write('--- SZCZEGOLY ZADANIA ---'), nl,
    zadanie(Zadanie, Umiejetnosc, Godziny),
    write('Zadanie: '), write(Zadanie), nl,
    write('Wymagana umiejetnosc: '), write(Umiejetnosc), nl,
    write('Czas pracy (godz): '), write(Godziny), nl,
    koszt_zadania(Zadanie, Koszt),
    write('Laczny koszt: '), write(Koszt), nl.
