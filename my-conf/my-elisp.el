;; Turn on all the goodies in emacs-lisp mode.
(dolist (hook '(paredit-mode
                rainbow-delimiters-mode
                eldoc-mode
                elisp-slime-nav-mode))
  (add-hook 'emacs-lisp-mode-hook hook))
