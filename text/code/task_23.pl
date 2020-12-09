runFindSortes(apple, T) :- apple_tree(X, T), writeln(X), fail.
runFindSortes(pear, T) :- pear_tree(X, T), writeln(X), fail.
runFindSortes(X, T) :- not(apple_tree(X, T)), not(apple_tree(X, T)),
                       writeln("No data"), fail.

task :- consult("tree.dat"),
        write("Enter tree name: "), read(DATA_TREE),
        write("Enter type name: "), read(DATA_TYPE),
        runFindSortes(DATA_TREE, DATA_TYPE).