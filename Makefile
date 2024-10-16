# Compiler
CC = gcc

# Flags of the compiler
CFLAGS = -Wall -Iinclude -std=c99

# Object files
OBJS = build/main.o

# Target 
TARGET = build/main

# Default rule
all: $(TARGET)

# Rule to build the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

build/main.o: src/main.c
	$(CC) $(CFLAGS) -c src/main.c -o build/main.o

run: $(TARGET)
	./$(TARGET)

# Linux clean
# clean:
# 	rm -rf build/*.o $(TARGET)

# Windows clean
clean:
	del /q build\*.o 
	del /q $(TARGET)