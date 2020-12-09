man(ivanov).
man(petrov).
man(sidorov).

woman(ivanova).
woman(petrova).

age(ivanov,  10).
age(petrov,  20).
age(sidorov, 30).
age(ivanova, 10).
age(petrova, 20).

hair(ivanov, blond).
hair(petrov, redhaired).
hair(sidorov, redhaired).
hair(ivanova, redhaired).
hair(petrova, blond).

cities(ivanov, [moscow, ekb] ).
cities(petrov, [stpeterburg, tomsk] ).
cities(sidorov, [omsk] ).
cities(ivanova, [tomsk, stpeterburg] ).
cities(petrova, [ekb, moscow] ).

task() :- man(N), age(N, A), A > 18, hair(N, redhaired), cities(N, CI), !, writeln(CI).

:- initialization(task()).