CC:=g++
LINK_FLAG:=-Wall -pthread
COMPILER_FLAG:=-c -fpic 
INC_DIRS += ./lib/libInclude/ 
INC_DIRS += ./lib/newLib
INC_FLAGS = $(addprefix -I,$(INC_DIRS))
DEPENDANT_FILE:=main.o lib32.o lib64.o
NAME=hoang trung kien
CFLAGS= -DRUN_SET

main.exe: $(DEPENDANT_FILE)
	$(CC) $(LINK_FLAG) $^ -o $@
main.o: main.cpp
	$(CC) $(COMPILER_FLAG) $(CFLAGS) $(INC_FLAGS) $^ -o $@

lib32.o: ./lib/lib32/lib32.cpp
	$(CC) $(COMPILER_FLAG) $(INC_FLAGS) $^ -o $@

lib64.o: ./lib/lib64/lib64.cpp
	$(CC) $(COMPILER_FLAG) $(INC_FLAGS) $^ -o $@		

clean:
	clear
	rm *.o *.exe *.so main *.a

run:
	./main.exe

test:
	echo hoang trung kien
