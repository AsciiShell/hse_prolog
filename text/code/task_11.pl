pow(_, 0, 1) :- !.
pow(X, N, R) :- Nprev is N - 1, pow(X, Nprev, Rprev), R is Rprev * X.
