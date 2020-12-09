comp(A,B) :- A < B -> write("A is less than B").
comp(A,B) :- A > B -> write("A is greater than B").
comp(A,B) :- A == B -> write("A is equal B").
