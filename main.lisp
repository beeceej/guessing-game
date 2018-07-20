(load "guessing-game.lisp")
(defun main ()
  (setf *random-state* (make-random-state t))
  (guessing-game 5 3 (random 5 *random-state*)))

