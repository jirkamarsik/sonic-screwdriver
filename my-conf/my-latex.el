;; Turn on automatic line breaks in latex-mode.
(add-hook 'latex-mode-hook 'turn-on-auto-fill)

;; Turn on on-the-fly spell-checking in latex-mode.
(eval-after-load "ispell"
  '(when (executable-find ispell-program-name)
     (add-hook 'latex-mode-hook 'turn-on-flyspell)))
