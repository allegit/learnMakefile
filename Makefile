ifeq (Darwin,$(shell uname -s))
	OS := darwin
else
	OS := linux
endif
comma := ,
delim ?= :

generate: vars

.PHONY: vars
vars: nextcc
	echo "$(shell pwd)"
	echo "OS is ${OS}"
	echo "${comma}"
	echo "${delim}"

nextcc:
	touch some_file
	ls -la

files := file1 file2
some_file: $(files)
	echo "Look at this variable: " $(files)
	touch some_file

file1: 
	touch file1

file2:
	touch file2

clean:
	rm -f file1 file2 some_file 1file
