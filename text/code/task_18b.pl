is_subset(A,B) :- length(A, N), N = 0.
is_subset(A,B) :- length(A, N), N > 0, append([Elem], A2, A), !,
                  member(Elem,B), is_subset(A2,B).
is_subset(A,B) :- length(A, N), N > 0, append([Elem], _, A), !, not(member(Elem,B)).
