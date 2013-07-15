;;; Cycling through a ring of spell-checker languages.
;;; Source: EmacsWiki/DiogoRamos

;; Defining the language ring.
(let ((langs '("english" "french")))
  (setq lang-ring (make-ring (length langs)))
  (dolist (elem langs) (ring-insert lang-ring elem)))

;; A function to switch the spellchecker to the next language in the ring.
(defun cycle-ispell-languages ()
  "Cycles through to the next language in the `lang-ring'."
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
