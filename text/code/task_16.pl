to_int(0, "ноль").
to_int(1, "один").
to_int(2, "два").
to_int(3, "три").
to_int(4, "четыре").
to_int(5, "пять").
to_int(6, "шесть").
to_int(7, "семь").
to_int(8, "восемь").
to_int(9, "девять").

to_int([],[]).
to_int([A|B], [X|Y]) :- to_int(A, X), to_int(B, Y).