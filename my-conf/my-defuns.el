;; Comment-specific buffer-local auto-fill.
;; Source: technomancy/emacs-starter-kit
(defun local-comment-auto-fill ()
  "Enables automatic line breaks only in comments for the current
  buffer."
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

;; Use Clojure syntax highlighting in the current buffer.
;; Source: overtone/emacs-live
(defun use-clojure-colors ()
  "Configures Clojure-style font-lock in the current buffer."
  (font-lock-mode nil)
  (clojure-font-lock-setup)
  (font-lock-mode t))

;; Use Clojure indentation rules in the current buffer.
;; Source: bosko/emacs-customizations
(defun use-clojure-indent ()
  "Sets the indentation behavior of the buffer to that of clojure-mode."
  (set (make-local-variable lisp-indent-function) 'clojure-indent-function))

(defun replace-region (beg end)
  "Replaces the current region (given also by beg and end
  arguments as with (interactive \"r\") ")
