BUILD_DIR?=dist

HEADER:=src/header
SRCS:=$(wildcard src/*.sh)
MAIN:=src/main

SCRIPT:=$(BUILD_DIR)/freerip.sh
CONF:=$(BUILD_DIR)/freerip.conf
LAUNCHER:=$(BUILD_DIR)/freerip-launcher

-include Makefile.local

$(SCRIPT): $(HEADER) $(SRCS) $(MAIN)
	mkdir -p $(dir $@)
	cat $^ > $@
	chmod +x $@

$(CONF): $(notdir $(CONF))
	mkdir -p $(dir $@)
	cp $< $@

$(LAUNCHER): $(notdir $(LAUNCHER))
	mkdir -p $(dir $@)
	cp $< $@
	chmod +x $@

release: $(SCRIPT) $(CONF)

clean:
	rm -f $(TARGET)

