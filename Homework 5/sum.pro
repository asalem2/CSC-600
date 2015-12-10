sum(List, MinPlusMax) :- maxlist(List, Max), min(List,Min), MinPlusMax is Max+Min.
maxlist([X],X).
maxlist([H|T],Max) :- maxlist(T,Tmax), Max is max(H,Tmax).
min([X], X).
min([H|T], Min) :- min(T,Min), Min=<H, !.
min([H|_], H).