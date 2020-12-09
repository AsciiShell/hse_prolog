emp(0, ivanov, junior, 1500, 0).
emp(1, petrov, middle, 3500, 1).
emp(2, sidorov, senior, 4500, 1).
emp(3, romanov, lead, 5500, 2).

family(0, ivanova, 0).
family(1, petrova, 1).
family(2, sidorova, 2).
family(3, romanova, 3).


a_familiar_b(A, B) :- emp(_, A, _, _, D1), emp(_, B, _, _, D2), D1 = D2, A \= B.

a_family_familiar_b(A, B) :- emp(ID1, _, _, _, D), emp(ID2, _, _, _, D),
                        family(ID1, A, _), family(ID2, B, _), ID1 \= ID2.
    
department_n1(ID, FIO) :- emp(ID, FIO, _, _, 1).

salary_more_than(FIO, MIN_SALARY) :- emp(_, FIO, _, SAL, _), SAL > MIN_SALARY.
                              
children_g_1(FIO, N) :- emp(ID, FIO, _, _, _), family(ID, _, N), N > 1.