# g++ -c -fpic main.cpp -o main.o

# g++ -c -fpic myLib.cpp -o myLib.o

# g++ -shared -fpic myLib.o -o libmyLib.so


# g++ -Wall -pthread main.o libmyLib.so -Wl,-rpath,/home/kienhoang/WORKSPACE/MakefileLearningImportant -o main

# g++ -Wall -pthread main.o -o main -ldl

g++ -c -fpic ./lib/lib32/lib32.cpp -o lib32.o

g++ -c -fpic ./lib/lib64/lib64.cpp -o lib64.o

ar  rcs libmyLib.a lib32.o lib64.o

g++ -Wall -pthread -I./lib/libInclude -I./lib/newLib main.cpp libmyLib.a -o main.exe