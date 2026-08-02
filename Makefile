# 1. Compiler and Flag Settings
CC = gcc
CFLAGS = -Wall -Wextra -g -Iinclude

# 2. Paths to your folders
SRC_DIR = src
OBJ_DIR = obj

# 3. Automatically find all .c files inside the src/ folder
SRCS = $(wildcard $(SRC_DIR)/*.c)
# Change the paths from src/*.c to obj/*.o
OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

# 4. Name of your final executable program
TARGET = mini_shell

# 5. Default target to build the program
all: $(TARGET)

# 6. Rule to link object files into the final executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# 7. Rule to compile .c files from src/ into .o files inside obj/
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# 8. Clean rule to delete compiled files
.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(TARGET)