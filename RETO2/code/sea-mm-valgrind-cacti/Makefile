.PHONY: all clean bench callgrind annotate report zip

all:
	$(MAKE) -C src all

clean:
	$(MAKE) -C src clean
	rm -rf results/*.out results/*.txt results/baseline/* results/opt/* results/cache-sweep/*
	rm -f documentacion.pdf entrega.zip

bench:
	$(MAKE) -C src bench

callgrind:
	$(MAKE) -C src callgrind

annotate:
	$(MAKE) -C src annotate

report:
	pandoc docs/documentacion.md -o documentacion.pdf

zip: report
	zip -r entrega.zip documentacion.pdf src/mm.c src/Makefile