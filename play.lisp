(load "guessing-game.lisp")

(defun play (&key num-range max-tries)
  (setf *random-state* (make-random-state t))
  (guessing-game num-range max-tries (random num-range *random-state*)))
