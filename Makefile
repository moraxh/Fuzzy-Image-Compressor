# Compiler
CC = gcc

# Include Dirs
INCLUDE_DIRS = lib/PNGLoader include

# Flags of the compiler
CFLAGS = -g -std=c11 $(addprefix -I,$(INCLUDE_DIRS))

# Object files
OBJS = build/main.o build/pngloader.o

# Target 
TARGET = build/main

# Default rule
all: $(TARGET)

# Rule to build the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

build/pngloader.o: lib/PNGLoader/pngloader.c lib/PNGLoader/pngloader.h
	$(CC) $(CFLAGS) -c lib/PNGLoader/pngloader.c -o build/pngloader.o

build/main.o: src/main.c
	$(CC) $(CFLAGS) -c src/main.c -o build/main.o

run: $(TARGET)
	./$(TARGET)

# Linux clean
# clean:
# 	rm -rf build/*.o $(TARGET)

# Windows clean
clean:
	del /q build