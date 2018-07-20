(load "main.lisp")

(save-application "guessing-game"
		  :toplevel-function #'main
		  :prepend-kernel t)
	