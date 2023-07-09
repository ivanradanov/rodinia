SUBDIRS := src

all: $(SUBDIRS)
$(SUBDIRS):
	+$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all $(SUBDIRS)
