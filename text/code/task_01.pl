man(ivan).
man(petr).
man(michail).

woman(elena).
woman(svetlana).
woman(alise).

parent(elena, ivan).
parent(elena, svetlana).
parent(petr, ivan).
parent(alise, petr).
parent(alise, michail).

is_brother(A, B) :- parent(P, A), parent(P, B), man(A), A \= B.
is_sister(A, B) :- parent(P, A), parent(P, B), woman(A), A \= B.
is_uncle(A, B) :- parent(P, B), is_brother(A, P).
is_grandmother(A, B) :- parent(P, B), parent(A, P), woman(A).
