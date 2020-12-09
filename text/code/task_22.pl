words_in_str_main([], 0).
words_in_str_main([H|T], N) :- words_in_str_main(T, NTemp), words_in_str(H, StringNTemp),
                               N is NTemp + StringNTemp.

words_in_str([], 0).
words_in_str([_|T], N) :- words_in_str(T, NTemp), N is NTemp + 1.

readFile(Stream, []) :- at_end_of_stream(Stream).

readFile(Stream,[X|L]) :- read_string(Stream, "\n", "\r\t", _, Y),
                          split_string(Y, " ", " ", X),
                          readFile(Stream, L).

task() :- open("task_21.txt", read, Str), readFile(Str, Lines),
          words_in_str_main(Lines, Len), close(Str), writeln(Len).
