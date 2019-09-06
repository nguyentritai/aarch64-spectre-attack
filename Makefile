CFLAGS = -std=c99

PROGRAM = spectre.out
SOURCE  = Source.c
     
all: $(PROGRAM) OBJ
     
$(PROGRAM): $(SOURCE) ; $(CC) $(CFLAGS) -o $(PROGRAM) $(SOURCE)

OBJ: ;objdump -DS spectre.out > obj
 
clean: ; rm -f $(PROGRAM)
