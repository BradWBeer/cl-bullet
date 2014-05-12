TARGET   = swigBullet
CC       = g++
CFLAGS   = -O3
LDFLAGS  = -shared -static  
INCLUDES = -I/usr/include/bullet/
LIBS     = -lLinearMath -lBulletCollision -lBulletSoftBody 
SRC      = $(TARGET).cpp
SWIG     = swig
SOPTS    = -c++ -cffi
SINC     = -I./bullet/
LRAW     = $(TARGET).lisp

all: $(TARGET)

$(TARGET): $(TARGET).o
	$(CC) $(LIBS) -o $@.so $^ $(LDFLAGS)

$(TARGET).o $(LRAW): $(TARGET).cpp
	sed -i 's/( :pointer)/(_ :pointer)/g' swigbullet.lisp
	sed -i '7i(in-package #:cl-bullet-bindings)' swigbullet.lisp
	cp swigbullet.lisp ../bindings/bullet-bindings.lisp
	$(CC) $(INCLUDES) -c $(CFLAGS) $<


$(TARGET).cpp: $(TARGET).i
	$(SWIG) $(SOPTS) $(SINC) -o $@ $<

.PHONY: clean cleanest

clean: 
	rm $(TARGET) $(TARGET).o $(TARGET).cpp
