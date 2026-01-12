run: example
	./example data/map_1.bmp data/map_1.csv data/stations_1.csv


# Под WSL2 чтото не работает gcc с опцией L. - не ищется библиотека libstationmapper.so

# stationmapper.o: src/stationmapper.c
# 	gcc -c -fpic src/stationmapper.c

# libstationmapper.so: stationmapper.o
# 	gcc -shared -o libstationmapper.so stationmapper.o

# example: example_src/example.c libstationmapper.so
# 	gcc -L. -o example example_src/example.c -lstationmapper -lm

clean:
	rm -f *.o  *.so example

# Тут собирается со статически линкуемой либой
example: example_src/example.c
	gcc example_src/example.c src/stationmapper.c -o example -lm
