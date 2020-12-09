parent(ivanov, petrov).
parent(petrov, sidorov).
parent(petrov, romanov).

ancestor(A, B) :- parent(B, A).
