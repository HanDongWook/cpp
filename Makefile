# Simple Makefile for algorithm_cpp

CXX := g++
CXXFLAGS := -std=gnu++17 -Wall -Wextra -Wshadow -O2 -pipe
SRC := src/main.cpp
BIN := main

.PHONY: all build run clean

all: build

build: $(BIN)

$(BIN): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(BIN)

run: build
	./$(BIN)

clean:
	rm -f $(BIN) *.o
