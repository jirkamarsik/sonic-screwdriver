;; Turn on the goodies for clojure-mode (and cider-repl-mode).
(dolist (attachment-point '(clojure-mode-hook
                            cider-repl-mode-hook))
  (dolist (hook '(paredit-mode
                  rainbow-delimiters-mode))
    (add-hook attachment-point hook)))

;; Use Clojure syntax highlighting in the REPL buffer.
(dolist (hook '(use-clojure-colors
                use-clojure-indent))
  (add-hook 'cider-repl-mode-hook hook))

;; Supply ElDoc-style help in nREPL-connected Clojure buffers.
(add-hook 'cider-mode-hook 'eldoc-mode)

;; Store REPL history in a file.
(setq cider-repl-history-file (concat user-emacs-directory "/cider-history"))
