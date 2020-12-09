belong(A, [A|_]) :- !.
belong(A, [_|B]) :- belong(A, B).

is_subset([], _).
is_subset([A|B], C) :- belong(A, C), subset(B, C).