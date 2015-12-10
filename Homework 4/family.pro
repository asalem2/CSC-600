%Facts
m([eric, luis, memo, angel, felix, antonio, marcos, guillermo, angel_sr, felix_sr, eligio, ander]).
f([jasmin, paola, betty, fidelia, guille, elvira, maribel, isabel]).

family([marcos,fidelia,[eric, luis]]).
family([guillermo,_,[memo, jasmin]]).
family([angel_sr,guille,[angel, betty]]).
family([felix_sr,elvira,[felix, antonio, paola]]).
family([eligio,isabel,[marcos, guillermo, maribel]]).
family([ander,marisa,[eligio]]).

%Rules
male(X) :- m(M), member(X,M).
female(X) :- f(F), member(X,F).
father(F,C) :- family([F,_,L]), member(C,L).
mother(M,C) :- family([_,M,L]), member(C,L).
parent(P,C) :- father(P,C) ; mother(P,C).
siblings1(X,Y) :- parent(A,X), parent(B,Y), A==B, X\=Y.
siblings2(X,Y) :- parent(A,X), parent(A,Y), parent(B,X), parent(B,Y), A\=B, X\=Y.
brother1(X,Y) :- siblings1(X,Y), male(X).
brother2(X,Y) :- siblings2(X,Y), male(X).
sister1(X,Y) :- siblings1(X,Y), female(X).
sister2(X,Y) :- siblings2(X,Y), female(X).
cousins(X,Y) :- parent(A,X), parent(B,Y), siblings2(A,B).
uncle(U,C) :- parent(X,C), siblings2(X,U), male(U).
aunt(A,C) :- parent(X,C), siblings2(X,A), female(A).
grandchild(C,G) :- parent(G,Y), parent(Y,C).
grandson(S,G) :- grandchild(S,G), male(S).
grandaughter(D,G) :- grandchild(D,G), female(D).
greatgrandparent(G,C) :- parent(G,X), grandchild(C,X).
ancestor(A,C) :- grandchild(C,A) ; greatgrandparent(A,C) ; parent(A,X), greatgrandparent(X,C).


