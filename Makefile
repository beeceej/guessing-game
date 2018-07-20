compile:
		@mkdir -p bin && ccl64 --load compile.lisp --eval '(ccl:quit)' && mv guessing-game bin