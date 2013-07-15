;; Comment-specific buffer-local auto-fill.
;; Nicked from technomancy/emacs-starter-kit.
(defun local-comment-auto-fill ()
  "Enables automatic line breaks only in comments for the current
  buffer."
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

;; Use Clojure syntax highlighting in the current buffer.
;; Inspired by overtone/emacs-live.
(defun use-clojure-colors ()
  (font-lock-mode nil)
  (clojure-mode-font-lock-setup)
  (font-lock-mode t))

;; Use Clojure indentation rules in the current buffer.
;; Taken from bosko/emacs-customizations.
(defun use-clojure-indent ()
  (set (make-local-variable lisp-indent-function) 'clojure-indent-function))
