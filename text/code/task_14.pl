lensp([], 0) :- !.
lensp([_|A], L) :- lensp(A, L1), L is L1 + 1.
