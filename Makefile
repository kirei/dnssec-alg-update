DRAFT=		dnssec-alg-update

# https://github.com/miekg/mmark
MMARK=		mmark

# https://pypi.python.org/pypi/xml2rfc
XML2RFC=	xml2rfc

MD=		$(DRAFT).md
XML=		$(DRAFT).xml
TXT=		$(DRAFT).txt
HTML=		$(DRAFT).html


.PHONY: txt xml html


txt: $(TXT)

xml: $(XML)

html: $(HTML)

%.txt: %.xml
	$(XML2RFC) $< $@

%.xml: %.md
	$(MMARK) -xml2 -page $< > $@

%.html: %.md
	$(MMARK) -page $< > $@

clean:
	rm -f $(XML) $(TXT) $(HTML)
