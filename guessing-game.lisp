(defun guessing-game (num-range tries target)
    (format t "*Welcome to the guessing game, Would you like to play? (Y/N)*~%")
    (let ((answer (read-line)))
      (if (string-equal answer "Y")
				(progn 
				  (format t "*Guess a number 0 - ~a* ~%~%" num-range)
					(is-winner? (.guessing-game 0 tries target) target))
				(format t "*Cya*~%"))))

(defun .guessing-game (curr-try max-tries target)
	(if (>= curr-try max-tries)
	  ()
		(progn (format t "*Guess ~a*~%" curr-try)
		  (let ((guess (read-line)))
				(if (eq (parse-integer guess) target)
				  t
					(.guessing-game (+ 1 curr-try) max-tries target))))))

(defun is-winner? (b answer)
  (if b (print "*You Win!*") (format t "~%*You Lose!*~%~%*The answer was ~a*" answer)))