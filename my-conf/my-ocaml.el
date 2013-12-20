;;; Setup from https://github.com/diml/utop#integration-with-emacs

;; Setup environment variables using opam
(dolist (var (car (read-from-string (shell-command-to-string "opam config env --sexp"))))
  (setenv (car var) (cadr var)))

;; Update the emacs path
(setq exec-path (split-string (getenv "PATH") path-separator))

;; Update the emacs load path
(push (concat (getenv "OCAML_TOPLEVEL_PATH") "/../../share/emacs/site-lisp") load-path)

;; Automatically load utop.el
(autoload 'utop "utop" "Toplevel for OCaml" t)
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)

;; Tuareg seems to force tuareg-run-ocaml over utop, which doesn't work.
(define-key tuareg-mode-map (kbd "C-c C-s") 'utop)


;;; Setting up ocp-indent and merlin from OPAM

(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(require 'ocp-indent)

(require 'merlin)
(add-hook 'tuareg-mode-hook 'merlin-mode)
