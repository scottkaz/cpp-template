#
# Build each *.cpp or *.cc file in the current directory as a stand-alone
# program.
#

#
# flags work with gcc 7.3
#
CPPFLAGS := -fsanitize=undefined -fsanitize=address -Werror -Wall -Wextra -Wconversion -std=c++17

.PHONY: all
all: $(basename $(wildcard *.cc) $(wildcard *.cpp))