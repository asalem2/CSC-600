%Facts
is_male(eric).
is_male(luis).
is_male(memo).
is_male(marcos).
is_male(eligio).

is_female(jasmin).
is_female(maribel).
is_female(isabel).

is_parent_of(marcos,eric).
is_parent_of(marcos,luis).
is_parent_of(guillermo, memo).
is_parent_of(guillermo, jasmin).
is_parent_of(eligio,marcos).
is_parent_of(isabel,marcos).
is_parent_of(eligio,guillermo).
is_parent_of(isabel,guillermo).
is_parent_of(eligio,maribel).
is_parent_of(isabel,maribel).

age(eric, 20).
age(luis, 19).
age(jasmin, 21).
age(memo, 23).

%Rules
grandparent(G,C) :- is_parent_of(X,C), is_parent_of(G,X).

findoldest(G, C, A, M, O) :- findall(L, grandparent(G,L), C), listage(C, A, Max), age(X, Max), M is Max, O = X.
listage(_, A, Max) :- findall(L, age(_,L), A), maxlist(A, Max).
maxlist([X],X).
maxlist([H|T],Max) :- maxlist(T,Tmax), Max is max(H,Tmax).

