.DEFAULT_GOAL := build-convert

build:
	mvn clean package

build-songs: build
	mkdir out/ -p && java -cp target/bulletmusic-jar-with-dependencies.jar io.github.tafaulhaber590.bulletmusic.MakeAll
	
build-convert: build-songs
	./convert
