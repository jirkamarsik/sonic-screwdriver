;; Turn on on-the-fly spell-checking in markdown-mode.
(eval-after-load "ispell"
  '(when (executable-find ispell-program-name)
     (add-hook 'markdown-mode-hook 'turn-on-flyspell)))
