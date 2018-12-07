#
# Generic makefile for one-file C++ programs
#
# Compiles all C++ files (*.cpp or *.cc) in current directory.
#
#

#
# flags work with gcc 7.3
#
CXXFLAGS := -O2 -fsanitize=undefined -fsanitize=address -Werror -Wall -Wextra -Wpointer-arith \
            -Wconversion -std=c++17

# uncomment to use clang, otherwise defaults to gcc
#CXX := clang++

# Add flags for linking with boost::filesystem
#LDLIBS := -lboost_system -lboost_filesystem

.PHONY: all
all: $(basename $(wildcard *.cpp) $(wildcard *.cc))

.PHONY: clean
clean:
	rm $(basename $(wildcard *.cpp) $(wildcard *.cc))
