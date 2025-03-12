lubi(jan,tatry).
lubi(jan,beskidy).
lubi(jerzy,beskidy).
lubi(jerzy,biesczady).
lubi(adam,sudety).
lubi(justyna,biesczady).
bratnia_dusza(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
