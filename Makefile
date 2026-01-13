run: example
	example.exe data/map_1.bmp data/map_1.csv data/stations_1.csv


clean:
	del -f *.o  *.so example example.exe

# Тут собирается со статически линкуемой либой
example: example_src/example.c
	gcc example_src/example.c src/stationmapper.c -o example.exe -lm
