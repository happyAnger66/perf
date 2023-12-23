NOW = $(shell date -u '+%Y%m%d%I%M%S')

all: build-x86

build-x86:
	docker build -t bpftrace_x86:$(NOW) -f Dockerfile.x86 .
	echo bpftrace_x86:$(NOW)