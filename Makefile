.POSIX:

OS = $(shell uname -s)
ifeq ($(OS), Darwin)
  PREFIX = /usr/local
else
  PREFIX = /usr
endif

install:
	[[ -f $$HOME/.netrc && -f $$HOME/.urs_cookies ]]
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done

uninstall:
	for script in bin/*; do \
		rm -f $(DESTDIR)$(PREFIX)/$$script; \
	done
	rm -i $$HOME/.urs_cookies
	rm -i $$HOME/.netrc

.PHONY: install uninstall
