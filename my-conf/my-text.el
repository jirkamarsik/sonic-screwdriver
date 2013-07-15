;; Turn on automatic line breaks in text-mode.
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Turn on on-the-fly spell-checking in text-mode.
(eval-after-load "ispell"
  '(when (executable-find ispell-program-name)
     (add-hook 'text-mode-hook 'turn-on-flyspell)))
