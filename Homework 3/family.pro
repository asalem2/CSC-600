%Facts
is_male(eric).
is_male(luis).
is_male(memo).
is_male(angel).
is_male(felix).
is_male(antonio).
is_male(marcos).
is_male(guillermo).
is_male(angel_sr).
is_male(felix_sr).
is_male(eligio).
is_male(ander).

is_female(jasmin).
is_female(paola).
is_female(betty).
is_female(fidelia).
is_female(guille).
is_female(elvira).
is_female(maribel).
is_female(isabel).

is_parent_of(fidelia,eric).
is_parent_of(fidelia,luis).
is_parent_of(marcos,eric).
is_parent_of(marcos,luis).
is_parent_of(guillermo, memo).
is_parent_of(guillermo, jasmin).
is_parent_of(guille,angel).
is_parent_of(guille,betty).
is_parent_of(angel_sr,angel).
is_parent_of(angel_sr,betty).
is_parent_of(elvira,felix).
is_parent_of(elvira,antonio).
is_parent_of(elvira,paola).
is_parent_of(felix_sr,felix).
is_parent_of(felix_sr,antonio).
is_parent_of(felix_sr,paola).
is_parent_of(eligio,marcos).
is_parent_of(isabel,marcos).
is_parent_of(eligio,guillermo).
is_parent_of(isabel,guillermo).
is_parent_of(eligio,maribel).
is_parent_of(isabel,maribel).
is_parent_of(ander,eligio).

%Rules
mother(M,C) :- is_parent_of(M,C), is_female(M).
father(F,C) :- is_parent_of(F,C), is_male(F).

sibling1(A,B) :- is_parent_of(X,A), is_parent_of(Y,B), A\=B, X==Y.
brother1(B,X) :- sibling1(B,X), is_male(B).
sister1(S,X) :- sibling1(S,X), is_female(S).

sibling2(A,B) :- is_parent_of(X,A), is_parent_of(X,B), is_parent_of(Y,A), is_parent_of(Y,B), A\=B, X\=Y.
brother2(B,X) :- sibling2(B,X), is_male(B).
sister2(S,X) :- sibling2(S,X), is_female(S).

cousin(X,Y) :- is_parent_of(A,X), is_parent_of(B,Y), sibling2(A,B).
uncle(U,C) :- is_parent_of(X,C), sibling2(X,U), is_male(U).
aunt(A,C) :- is_parent_of(X,C), sibling2(X,A), is_female(A).
grandparent(G,C) :- is_parent_of(X,C), is_parent_of(G,X).
grandmother(G,C) :- grandparent(G,C), is_female(G).
grandfather(G,C) :- grandparent(G,C), is_male(G).
grandchild(C,G) :- grandparent(G,C).

greatgrandparent(G,C) :- is_parent_of(G,Y), grandparent(Y, C).

ancestor(A,C) :- greatgrandparent(A,C).