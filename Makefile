.SURFFIXES : .cpp .o
CXX = g++

CPPFLAGS = -g

HEDRS = linkedlist.h stack.h
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

TARGET = testlib

all : $(TARGET)

$(TARGET) : $(OBJS) $(HDRS)
	$(CXX) -o $@ $(OBJS)

clean :
	rm -rf $(OBJS) $(TARGET)	
