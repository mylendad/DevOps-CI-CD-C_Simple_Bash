CC=gcc
CFLAGS=-std=c11 -Wall -Werror -Wextra
LDFLAGS=-g 
SHELL:=/bin/bash
FILE=./test_files/test_2.txt ./test_files/test.txt ./test_files/empty.txt fergth
FILEERROR=qwerty
CHECK=2>&1 valgrind --tool=memcheck --leak-check=yes ./s21_grep

all: s21_grep tests


s21_grep:
		$(CC)  $(CFLAGS) test_grep.c grep.c $(LDFLAGS) -o s21_grep


clean: 
		rm s21_grep


leaks_linux:
		valgrind --tool=memcheck --leak-check=yes ./s21_grep


leaks_mac_os:
		leaks -atExit -- ./s21_grep


tests:

		# diff <(./s21_grep re $(FILE)) <(grep re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -e re $(FILE)) <(grep -e re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -e re -e ne $(FILE)) <(grep -e re -e ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -q re $(FILE)) <(grep -q re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -n re $(FILE)) <(grep -n re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -s re $(FILE)) <(grep -s re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -i re $(FILE)) <(grep -i re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -v re $(FILE)) <(grep -v re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -c re $(FILE)) <(grep -c re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -l re $(FILE)) <(grep -l re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -h re $(FILE)) <(grep -h re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -f ./test_files/pattern.txt re $(FILE)) <(grep -f ./test_files/pattern.txt re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -o re $(FILE)) <(grep -o re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ei re $(FILE)) <(grep -ei re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ev re $(FILE)) <(grep -ev re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ec re $(FILE)) <(grep -ec re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -el re $(FILE)) <(grep -el re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -en re $(FILE)) <(grep -en re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -eh re $(FILE)) <(grep -eh re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -es re $(FILE)) <(grep -es re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -eo re $(FILE)) <(grep -eo re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -vn re $(FILE)) <(grep -vn re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -vh re $(FILE)) <(grep -vh re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -vs re $(FILE)) <(grep -vs re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ef ./test_files/pattern.txt  $(FILE)) <(grep -ef ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -vf ./test_files/pattern.txt $(FILE)) <(grep -vf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -lf ./test_files/pattern.txt  $(FILE)) <(grep -lf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -cf ./test_files/pattern.txt $(FILE)) <(grep -cf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -nf ./test_files/pattern.txt $(FILE)) <(grep -nf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -hf ./test_files/pattern.txt $(FILE)) <(grep -hf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -sf ./test_files/pattern.txt $(FILE)) <(grep -sf ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fo ./test_files/pattern.txt $(FILE)) <(grep -fo ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fv ./test_files/pattern.txt  $(FILE)) <(grep -fv ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fl ./test_files/pattern.txt $(FILE)) <(grep -fl ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fc ./test_files/pattern.txt $(FILE)) <(grep -fc ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fn ./test_files/pattern.txt $(FILE)) <(grep -fn ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fh ./test_files/pattern.txt $(FILE)) <(grep -fh ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -fs ./test_files/pattern.txt $(FILE)) <(grep -fs ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -of ./test_files/pattern.txt $(FILE)) <(grep -of ./test_files/pattern.txt $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -eo re -eo ne $(FILE)) <(grep -eo re -eo ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -es re -es ne $(FILE)) <(grep -es re -es ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -eh re -eh ne $(FILE)) <(grep -eh re -eh ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ev re -ev ne $(FILE)) <(grep -ev re -ev ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -el re -el ne $(FILE)) <(grep -el re -el ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ef re -ef ne $(FILE)) <(grep -ef re -ef ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ec re -ec ne $(FILE)) <(grep -ec re -ec ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -en re -en ne $(FILE)) <(grep -en re -en ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ei re -ei ne $(FILE)) <(grep -ei re -ei ne $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -vo re $(FILE)) <(grep -vo re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -cn re $(FILE)) <(grep -cn re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ch re $(FILE)) <(grep -ch re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -cs re $(FILE)) <(grep -cs re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -co re $(FILE)) <(grep -co re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ln re $(FILE)) <(grep -ln re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -lh re $(FILE)) <(grep -lh re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ls re $(FILE)) <(grep -ls re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -lo re $(FILE)) <(grep -lo re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -nh re $(FILE)) <(grep -nh re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ns re $(FILE)) <(grep -ns re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -no re $(FILE)) <(grep -no re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -hs re $(FILE)) <(grep -hs re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -ho re $(FILE)) <(grep -ho re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		# diff <(./s21_grep -so re $(FILE)) <(grep -so re $(FILE)) && echo "SUCCES!" || echo "FAIL!"
		
		
	
		$(CHECK) ./s21_grep -e re $(FILE)
		$(CHECK) ./s21_grep -i re $(FILE)
		$(CHECK) ./s21_grep -v re $(FILE)
		$(CHECK) ./s21_grep -c re $(FILE)
		$(CHECK) ./s21_grep -l re $(FILE)
		$(CHECK) ./s21_grep -n re $(FILE)
		$(CHECK) ./s21_grep -h re $(FILE)
		$(CHECK) ./s21_grep -s re $(FILE)
		$(CHECK) ./s21_grep -f ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -o re $(FILE)
		$(CHECK) ./s21_grep -ei re $(FILE)
		$(CHECK) ./s21_grep -ev re $(FILE)
		$(CHECK) ./s21_grep -ec re $(FILE)
		$(CHECK) ./s21_grep -el re $(FILE)
		$(CHECK) ./s21_grep -en re $(FILE)
		$(CHECK) ./s21_grep -eh re $(FILE)
		$(CHECK) ./s21_grep -es re $(FILE)
		$(CHECK) ./s21_grep -ef ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -eo re $(FILE)
		$(CHECK) ./s21_grep -vc re $(FILE)
		$(CHECK) ./s21_grep -vl re $(FILE)
		$(CHECK) ./s21_grep -vn re $(FILE)
		$(CHECK) ./s21_grep -vh re $(FILE)
		$(CHECK) ./s21_grep -vs re $(FILE)
		$(CHECK) ./s21_grep -vf ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -vo re $(FILE)
		$(CHECK) ./s21_grep -cl re $(FILE)
		$(CHECK) ./s21_grep -cn re $(FILE)
		$(CHECK) ./s21_grep -ch re $(FILE)
		$(CHECK) ./s21_grep -cs re $(FILE)
		$(CHECK) ./s21_grep -cf ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -co re $(FILE)
		$(CHECK) ./s21_grep -ln re $(FILE)
		$(CHECK) ./s21_grep -lh re $(FILE)
		$(CHECK) ./s21_grep -ls re $(FILE)
		$(CHECK) ./s21_grep -lf ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -lo re $(FILE)
		$(CHECK) ./s21_grep -nh re $(FILE)
		$(CHECK) ./s21_grep -ns re $(FILE)
		$(CHECK) ./s21_grep -nf ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -no re $(FILE)
		$(CHECK) ./s21_grep -hs re $(FILE)
		$(CHECK) ./s21_grep -hf ./test_files/pattern.txt re $(FILE)
		$(CHECK) ./s21_grep -ho re $(FILE)
		$(CHECK) ./s21_grep -sf ./test_files/pattern.txtre $(FILE)
		$(CHECK) ./s21_grep -so re $(FILE)
		$(CHECK) ./s21_grep -fo re $(FILE)


