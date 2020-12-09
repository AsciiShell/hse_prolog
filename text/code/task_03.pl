task_01(X, Y, F) :- F is 3 * Y * sqrt(abs(X)) + sin(X * Y) * (cos(Y) + 2).

a(X, RES) :- RES is sqrt(abs(X)).
b(Y, RES) :- RES is cos(Y) + 2.

task_02(X, Y, A, B, F) :- a(X, A), b(Y, B), F is 3 * Y * A + sin(X * Y) * B.
