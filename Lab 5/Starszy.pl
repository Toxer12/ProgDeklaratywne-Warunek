urodzony(jan,1974).
urodzony(ludwik,1976).
urodzony(maciej,1960).
urodzony(grzegorz,1975).
%urodzony/2 urodzony(kto,kiedy).

starszy(X,Y):-urodzony(X,Z),urodzony(Y,Q),Z<Q.
