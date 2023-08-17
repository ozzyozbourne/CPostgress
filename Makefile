PG_HEADER_PATH = /usr/include/postgresql
PG_LIB = pq

preprocessor:
	gcc -E src/main.c -o build/main.i -I$(PG_HEADER_PATH)

compiler:
	gcc -S src/main.c -o build/main.s -I$(PG_HEADER_PATH)

assembler:
	gcc -c src/main.c -o build/main.o -I/$(PG_HEADER_PATH)

linker:
	gcc src/main.c -o build/main -I$(PG_HEADER_PATH) -l$(PG_LIB)

build_c:
	gcc src/main.c -o build/main -I$(PG_HEADER_PATH) -l$(PG_LIB)

clean:
	rm -rf build && mkdir build
