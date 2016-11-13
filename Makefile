BUILD_DIR?=dist

LAUNCHER:=src/launcher
SRCS:=$(wildcard src/*.sh)

SCRIPT:=$(BUILD_DIR)/freerip.sh
CONF:=$(BUILD_DIR)/freerip.conf

$(SCRIPT): $(SRCS) $(LAUNCHER)
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
