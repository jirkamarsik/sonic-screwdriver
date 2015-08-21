;;; Cycling through a ring of spell-checker languages.
;;; Source: EmacsWiki/DiogoRamos

(defvar default-spell-check-lang "english"
  "Default language for spell-checking to use in new buffer.")

(defvar other-spell-check-langs '("francais")
  "Other languages to make available in the lang-ring.")

(defun initialize-lang-ring ()
  (let ((langs (append other-spell-check-langs
                       (list default-spell-check-lang))))
    (setq-local lang-ring (make-ring (length langs)))
    (dolist (elem langs) (ring-insert lang-ring elem))
    (ispell-change-dictionary default-spell-check-lang)))

;; Defining the language ring per spell-checked buffer.
(add-hook 'flyspell-mode-hook (function initialize-lang-ring))

;; A function to switch the spellchecker to the next language in the ring.
(defun cycle-ispell-languages ()
  "Cycles through to the next language in the `lang-ring'."
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
