% --- Rules ---

% Basic Relationships
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

% Child
child(X, Y) :- parent(Y, X).

% Siblings
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Grandfather
grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

% Grandmother
grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

% Aunt/Uncle
uncle(X, Y) :-
    parent(Z, Y),
    sibling(X, Z),
    male(X).

aunt(X, Y) :-
    parent(Z, Y),
    sibling(X, Z),
    female(X).

% Cousins
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2).