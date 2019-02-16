(load "guessing-game.lisp")

(defparameter *num-range* 1000)
(defparameter *max-tries* 20)

(defun main ()
  (setf *random-state* (make-random-state t))
  (guessing-game *num-range* *max-tries* (random *num-range* *random-state*)))
