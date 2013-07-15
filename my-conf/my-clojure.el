;; Turn on the goodies for clojure-mode (and nrepl mode).
(dolist (attachment-point '(clojure-mode-hook
                            nrepl-mode-hook))
  (dolist (hook '(paredit-mode
                  rainbow-delimiters-mode))
    (add-hook attachment-point hook)))

;; Use Clojure syntax highlighting in the REPL buffer.
(dolist (hook '(use-clojure-colors
                use-clojure-indent))
  (add-hook 'nrepl-mode-hook hook))

;; Supply ElDoc-style help in nREPL-connected Clojure buffers.
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
