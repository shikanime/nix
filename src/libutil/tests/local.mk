check: libutil-tests_RUN

programs += libutil-tests

libutil-tests_DIR := $(d)

libutil-tests_SOURCES := $(wildcard $(d)/*.cc)

libutil-tests_CXXFLAGS += -I src/libutil

libutil-tests_LIBS = libutil

libutil-tests_LDFLAGS := $$(pkg-config --libs gtest_main)
