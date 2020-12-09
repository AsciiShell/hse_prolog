win(ivanov, petrov).
win(ivanov, sidirov).
win(sidirov, petrov).

task() :- win(X, _), win(_, X), format('~s is fighter\n', [X]).
task() :- win(X, _), not(win(_, X)), format('~s is winner\n', [X]).
task() :- win(_, X), not(win(X, _)), format('~s is sportsman\n', [X]).