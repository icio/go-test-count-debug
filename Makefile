RUN=go test -count 2 -v .

README.txt: count_test.go Makefile
	echo $$ $(RUN) > README.txt
	$(RUN) | tee -a README.txt
