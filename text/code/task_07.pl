discriminant(A, B, C, D) :- D is B^2 - 4 * A * C.

roots(A,B,C,D,X1,X2) :- discriminant(A, B, C, D),
                ( D < 0 -> write("No solutions");
                  D == 0 -> X1 is (-B) / (2 * A);
                  X1 is (-B + sqrt(D)) / (2 * A), X2 is (-B - sqrt(D)) / (2 * A)
                ).