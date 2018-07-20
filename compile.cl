(load "main.cl")

(save-application "guessing-game"
		  :toplevel-function #'main
		  :prepend-kernel t)
