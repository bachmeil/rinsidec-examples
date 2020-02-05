R_HOME := $(shell R RHOME)
LIBDIR := $(shell echo 'cat(find.package("RInsideC"))' | $(R_HOME)/bin/R --vanilla --slave)
RLDFLAGS := $(shell $(R_HOME)/bin/R CMD config --ldflags)
RCPPFLAGS := $(shell $(R_HOME)/bin/R CMD config --cppflags)

hello:
	gcc hello.c $(LIBDIR)/libs/RInsideC.so -o bin/hello
	bin/hello

test:
	gcc test.c $(RLDFLAGS) $(RCPPFLAGS) $(LIBDIR)/libs/RInsideC.so -o bin/test
	bin/test
