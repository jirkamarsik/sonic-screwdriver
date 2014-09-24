(require 'cl-macs)
(require 'dash)
(require 'f)


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

(defun from-binary-to-site-lisp (binary-path)
  "Given the path to a binary in some prefix, returns the path of
  share/emacs/site-lisp in the same prefix."
  (f-join (f-dirname (f-dirname binary-path)) "share" "emacs" "site-lisp"))

(defmacro proceed-with-executable (command &rest body)
  "Only proceed with evaluating the body if an executable having
  the given name exists. Also add the site-lisp of the
  executable's prefix to the load-path."
  (let ((command-path (cl-gensym "command-path")))
    `(-when-let (,command-path (executable-find ,command))
       (add-to-list 'load-path (from-binary-to-site-lisp ,command-path))
       ,@body)))
