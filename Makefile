run: example
	./example data/map_1.bmp data/map_1.csv data/stations_1.csv

clean:
	rm -f *.o  *.so example

#Тут собирается со статически линкуемой либой
example: example_src/example.c
	gcc example_src/example.c src/stationmapper.c -o example -lm
