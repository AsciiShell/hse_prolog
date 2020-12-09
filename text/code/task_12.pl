fib(1, 0) :- !.
fib(2, 1) :- !.
fib(N, R) :- N1 is N - 1, N2 is N - 2, fib(N1, R1), fib(N2, R2), R is R1 + R2.