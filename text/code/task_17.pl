max_num([], M) :- writeln(M).
max_num([A|B], M) :- M > A, max_num(B, M); max_num(B, A).
task([A|B]) :- max_num(B, A).