file_len([], 0).
file_len([H|T], Len) :- file_len(T, LenTemp), string_len(H, StringLenTemp),
                        Len is LenTemp + StringLenTemp.

string_len(S, L) :- atom_chars(S, V), string_len_(V, L).

string_len_([], 0).
string_len_([_|T], L) :- string_len_(T, L1), L is L1 + 1.

readFile(Stream, []) :- at_end_of_stream(Stream).

readFile(Stream, [X|L]) :- at_end_of_stream(Stream),
                           read_string(Stream, "\n", "\r\t", _, X),
                           readFile(Stream, L).

task() :- open("task_21.txt", read, Str), readFile(Str, Lines),
          file_len(Lines, Len), close(Str), writeln(Len).
