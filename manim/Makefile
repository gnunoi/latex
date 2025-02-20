SOURCES := $(shell find . -maxdepth 1 -type f -name "*.py")
TARGET := $(SOURCES:.py=.mp4)
OPT := -qk
MANIM := manim $(OPT)

.PHONY:all clean distclean c

all:$(TARGET)

%.mp4:%.py
	$(MANIM) $<

clean: 
	@rm -rf __py_cache__
	@rm -rf media

c:clean

