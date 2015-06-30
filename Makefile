package=genometools-scripts
prefix=/usr/local
bindir=$(prefix)/bin
datadir=$(prefix)/share
docdir=$(datadir)/doc/$(package)

bin_SCRIPTS=$(shell ls gt-*)
doc_DATA=CONTRIBUTORS LICENSE README.md

all:

clean:

readme: README.md

README.md: README.md.in ${bin_SCRIPTS}
	cp README.md.in README.md
	for f in ${bin_SCRIPTS} ; do \
 	 echo "### $$f" >> README.md; \
	  echo '```' >> README.md; \
	  ./$$f -h >> README.md; \
	  echo '```' >> README.md; \
	done

install:
	install -d $(DESTDIR)$(bindir)
	install $(bin_SCRIPTS) $(DESTDIR)$(bindir)
	install -d $(DESTDIR)$(docdir)
	install $(doc_DATA) $(DESTDIR)$(docdir)

.PHONY: all clean install test

test:
	cd testsuite; env -i PATH=$$PATH:`pwd`/../_gt/bin ./testsuite.rb

testclean:
	rm -rf testsuite/stest_testsuite