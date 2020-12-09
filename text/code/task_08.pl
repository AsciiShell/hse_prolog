age(ivanov, 10).
age(petrov, 20).
age(sidorov, 30).
age(ivanova, 10).
age(petrova, 20).

man(ivanov).
man(petrov).
man(sidorov).

woman(ivanova).
woman(petrova).

task() :-
    age(NAME, AGE),
    AGE > 18,
    man(NAME),
    writeln(NAME),
    fail.

:- initialization(task()).