run: example
	./example data/map_1.bmp data/map_1.csv data/stations_1.csv

# stationmapper.o: src/stationmapper.c
# 	gcc -c -fpic src/stationmapper.c

# libstationmapper.so: stationmapper.o
# 	gcc -shared -o libstationmapper.so stationmapper.o

# example: example_src/example.c libstationmapper.so
# 	gcc -L. -o example example_src/example.c -lstationmapper

example: example_src/example.c
	gcc example_src/example.c src/stationmapper.c -o example -lm
