VERSION= 0.1
PREFIX?= /usr
DESTDIR?= /

all: clean-build

clean-build: clean-build.in
	sed "s/@@VERSION@@/${VERSION}/" $< > $@

install: all
	install -D clean-build $(DESTDIR)/$(PREFIX)/bin/clean-build
	install -D clean-build.conf $(DESTDIR)/$(PREFIX)/etc/clean-build.conf
	install -D clean-build.1 $(DESTDIR)/$(PREFIX)/man/man1/clean-build.1

clean:
	rm clean-build