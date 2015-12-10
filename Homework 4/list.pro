%Rules
member1(X,[X|_]).
member1(X,[_|T]) :- member1(X,T).

firstelement([X|_],X).

lastelement([X],X).
lastelement([_|T],X) :- lastelement(T,X).

twoadjacent(X,Y,[X,Y|_]).
twoadjacent(X,Y,[_|T]) :- twoadjacent(X,Y,T).

threeadjacent(X,Y,Z, [X,Y,Z|_]).
threeadjacent(X,Y,Z,[_|T]) :- threeadjacent(X,Y,Z,T).

appendlist([],L2,L2).
appendlist([X|T1],L2,[X|T3]) :- append(T1,L2,T3).

delete(X,[X|T],T).
delete(X,[H|T],[H|T1]) :- delete(X,T,T1).

appendelement([],E,[E]).
appendelement([X|T1], E, [X|T3]) :- append(T1,[E],T3).

insert(X,L,XL) :- delete(X,XL,L).

len([], 0).
len([_|T],N) :- len(T, N1), N is 1 + N1.

reverse([],[]).
reverse([H|T], Rev) :- reverse(T, RT), appendlist(RT,[H],Rev).

palindrome(L1) :- reverse(L1, Rev), Rev == L1.

display([]) :- nl.
display([X|T]) :- write(X), tab(1), display(T).
