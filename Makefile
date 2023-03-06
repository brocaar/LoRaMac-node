.PHONY: build

devshell:
	docker-compose run --rm loramac-node bash

prepare:
	mkdir build && cd build && cmake -DCMAKE_TOOLCHAIN_FILE="cmake/toolchain-arm-none-eabi.cmake" -DCLASSB_ENABLED=ON ..

configure:
	cd build && ccmake ..

build:
	cd build && make
