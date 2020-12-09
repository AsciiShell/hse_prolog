:- dynamic phone/2.

task :- consult("tel.dat"),
        write("Enter name: "), read(DATA_NAME),
        write("Enter phone number: "), read(DATA_PHONE),
        assert(phone(DATA_NAME, DATA_PHONE)),
        open("tel_updated.dat", write, STREAM), set_output(STREAM),
        listing(phone), close(STREAM).
