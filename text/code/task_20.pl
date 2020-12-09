task(S, L) :- atom_chars(S, V), string_len(V, L).

string_len([], 0).
string_len([_|T], L) :- string_len(T, L1), L is L1 + 1.