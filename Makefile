CC:=g++
LINK_FLAG:=-Wall -pthread
COMPILER_FLAG:=-c -fpic
DEPENDANT_FILE:=main.o lib32.o lib64.o
NAME=hoang trung kien

main.exe: $(DEPENDANT_FILE)
	$(CC) $(LINK_FLAG) $? -o $@
main.o: main.cpp
	$(CC) $(COMPILER_FLAG) $? -o $@

lib32.o: ./lib/lib32/lib32.cpp
	$(CC) $(COMPILER_FLAG) $? -o $@

lib64.o: ./lib/lib64/lib64.cpp
	$(CC) $(COMPILER_FLAG) $? -o $@

clean:
	rm *.o *.exe

run:
	./main.exe

test:
	echo hoang trung kien
