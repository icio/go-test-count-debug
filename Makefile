RUN=go test -count 2 -v .

README.txt: count_test.go Makefile
	echo $$ cat count_test.go > README.txt
	cat count_test.go >> README.txt
	echo >> README.txt
	echo $$ $(RUN) >> README.txt
	$(RUN) >> README.txt
