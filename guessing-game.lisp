
(defun high-or-low (guess target)
 (when (> guess target) (format t "*A bit High*~%"))
 (when (< guess target) (format t "*A bit Low*~%")))

(defun is-winner? (b answer)
  (if b (print "*You Win!*") (format t "~%*You Lose!*~%~%*The answer was ~a*" answer)))

(defun .guessing-game (curr-try max-tries target)
  (if (>= curr-try max-tries)
    nil
    (progn
      (format t "*Guess ~a*~%" curr-try)
      (let ((guess (parse-integer(read-line))))
        (if (eq guess target)
          t
          (progn
            (high-or-low guess target)
            (.guessing-game (+ 1 curr-try) max-tries target)))))))

(defun guessing-game (num-range tries target)
  (format t "*Welcome to the guessing game, Would you like to play? (Y/N)*~%")
  (let ((answer (read-line)))
    (if (string-equal answer "Y")
      (progn 
        (format t "*Guess a number 0 - ~a* ~%~%" num-range)
        (is-winner? (.guessing-game 0 tries target) target))
      (format t "*Cya*~%"))))