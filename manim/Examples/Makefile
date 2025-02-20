#SOURCES := $(shell find . -maxdepth 1 -type f -name "*.py")
SOURCES := $(wildcard *.py)
TARGET := $(SOURCES:.py=.mp4)
OPT := -qk
MANIM := manim $(OPT)

.PHONY:all clean distclean c

all:$(TARGET)
	echo $(TARGET)
	echo $(SOURCES)

%.mp4:%.py
	$(MANIM) $<

clean: 
	@rm -rf __py_cache__
	@rm -rf media

c:clean

