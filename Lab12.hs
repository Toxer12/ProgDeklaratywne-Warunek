main = do
 print "Moja pierwsza aplikacja w Haskell"
 print "Wpisz imie:"
 imie <- getLine
 print "Wypisz nazwisko:"
 nazwisko <- getLine
 print ("Witaj, " ++ imie, " " ++ nazwisko)