f(X,Y,R) :- X + Y < -1, R is 2 * X.
f(X,Y,R) :- -1 =< X+Y, X+Y =< 1, R is cos(X*Y).
f(X,Y,R) :- X+Y > 1, R is sqrt(X+Y).
