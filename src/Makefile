FILES = $(wildcard *.cpp)

all: build

force:

$(FILES): force
	g++ -c $@

build: $(FILES)
	g++ *.o -o /PunchServer
