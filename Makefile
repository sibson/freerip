BUILD_DIR?=dist

HEADER:=src/header
SRCS:=$(wildcard src/*.sh)
MAIN:=src/main

SCRIPT:=$(BUILD_DIR)/freerip.sh
CONF:=$(BUILD_DIR)/freerip.conf

$(SCRIPT): $(HEADER) $(SRCS) $(MAIN)
	mkdir -p $(dir $@)
	cat $^ > $@
	chmod +x $@

$(CONF): $(notdir $(CONF))
	mkdir -p $(dir $@)
	cp $< $@

release: $(SCRIPT) $(CONF)

clean:
	rm -f $(TARGET)

-include Makefile.local
