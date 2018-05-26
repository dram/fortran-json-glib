PROGRAM = tests/run-tests
MODULES_DIR = modules
OBJECT_FILES = sources/json_glib.o sources/json_glib_aux.o
OBJECT_FILES += tests/strings.o tests/cstrings.o tests/main.o

.PHONY: build clean run setup

build: setup ${PROGRAM}

run: build
	@${PROGRAM}

sources/json_glib.f90: tools/api-translator.py
	$< json_glib /usr/local/share/gir-1.0/Json-1.0.gir >$@

%.o: %.f90
	${CC} -Wall -J ${MODULES_DIR} -o $@ -c $<

${PROGRAM}: ${OBJECT_FILES}
	${CC} -o $@ $^ -lgfortran $(shell pkg-config --libs json-glib-1.0)

setup: ${MODULES_DIR}

${MODULES_DIR}:
	mkdir -p $@

clean:
	rm -rf ${PROGRAM} ${OBJECT_FILES} ${MODULES_DIR}
