(defun guessing-game (num-range tries target)
  (setf curr-try 0 )
  (format t "Welcome to the guessing game, Would you like to play? (Y / N)~%")
  (let ((answer (read-line)))
    (if (string-equal answer "Y")
        (progn (format t "Guess a number 0 - ~a ~%" num-range)
            (loop
                (if (> curr-try tries)
                (progn 
                    (format t "Too many tries")
                    (return)))
                (format t "This is guess ~a~%" curr-try)
                (setf guess (read-line))
            
                (if (eq (parse-integer guess) target)
                    (progn
                        (format t "You win!")
                        (return)))
                (setf curr-try (+ curr-try 1))
            ))
        (format t "Bye ~%"))))
