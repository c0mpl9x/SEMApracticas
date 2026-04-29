CC := gcc
CFLAGS := -O2 -g -Wall -Wextra -std=c99 -D_POSIX_C_SOURCE=199309L
LDFLAGS := -lrt

TARGET := mm
SRC := mm.c

N ?= 512
BS ?= 32

I1 ?= 32768,8,64
D1 ?= 32768,8,64
LL ?= 262144,8,64

RESULTS := ../results

.PHONY: all clean run bench callgrind annotate memcheck sweep

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

run: $(TARGET)
	./$(TARGET) $(N) $(BS)

bench: $(TARGET)
	mkdir -p $(RESULTS)
	./$(TARGET) $(N) $(BS) | tee $(RESULTS)/bench_N$(N)_BS$(BS).txt

memcheck: $(TARGET)
	mkdir -p $(RESULTS)
	valgrind --tool=memcheck --leak-check=full ./$(TARGET) $(N) $(BS) \
		2>&1 | tee $(RESULTS)/memcheck_N$(N)_BS$(BS).txt

callgrind: $(TARGET)
	mkdir -p $(RESULTS)
	valgrind --tool=callgrind --cache-sim=yes \
		--I1=$(I1) --D1=$(D1) --LL=$(LL) \
		--callgrind-out-file=$(RESULTS)/callgrind_N$(N)_BS$(BS).out \
		./$(TARGET) $(N) $(BS)

annotate: $(TARGET)
	mkdir -p $(RESULTS)
	callgrind_annotate --auto=yes $(RESULTS)/callgrind_N$(N)_BS$(BS).out mm.c \
		> $(RESULTS)/annotate_N$(N)_BS$(BS).txt

sweep: $(TARGET)
	mkdir -p $(RESULTS)/cache-sweep
	for bs in 8 16 32 64; do \
		echo "Running BS=$$bs"; \
		./$(TARGET) $(N) $$bs | tee $(RESULTS)/cache-sweep/bench_N$(N)_BS$$bs.txt; \
		valgrind --tool=callgrind --cache-sim=yes \
			--I1=$(I1) --D1=$(D1) --LL=$(LL) \
			--callgrind-out-file=$(RESULTS)/cache-sweep/callgrind_N$(N)_BS$$bs.out \
			./$(TARGET) $(N) $$bs; \
	done

clean:
	rm -f $(TARGET)
