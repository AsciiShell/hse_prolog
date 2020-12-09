is_odd(X, R) :- R is X mod 2.
sum_odd_array([], S) :- S is 0.
sum_odd_array([A|B], S) :- sum_odd_array(B, S2), is_odd(A, R),
                           (R == 0, S is S2 + A; S is S2).
