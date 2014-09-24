;;; Setup from https://github.com/diml/utop#integration-with-emacs


;; Weird thing to stop Emacs from complaining that 'initialize-my-ocaml is
;; not bound.
(defvar initialize-my-ocaml nil)

(defun initialize-my-ocaml ()
  "Setup tuareg-mode to use utop, ocp-indent and merlin from opam."

  ;; opam environment setup
  (proceed-with-executable "opam"
    ;; Setup environment variables using opam
    (dolist (var (car (read-from-string (shell-command-to-string
                                         "opam config env --sexp"))))
      (setenv (car var) (cadr var)))

    ;; Update the emacs path
    (setq exec-path (split-string (getenv "PATH") path-separator)))

  ;; utop
  (proceed-with-executable "utop"
    ;; Automatically load utop.el
    (autoload 'utop "utop" "Toplevel for OCaml" t)
    (autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
    (add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)

    ;; Tuareg seems to force tuareg-run-ocaml over utop, which doesn't work.
    (define-key tuareg-mode-map (kbd "C-c C-s") 'utop))

  ;; ocp-indent
  (proceed-with-executable "ocp-indent"
    (require 'ocp-indent))

  ;; merlin
  (proceed-with-executable "merlin"
    ;; Load merlin-mode
    (require 'merlin)
    
    ;; Start merlin on ocaml files
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    
    ;; Enable auto-complete
    (setq merlin-use-auto-complete-mode 'easy)
    
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)))


(eval-after-load 'tuareg (function initialize-my-ocaml))
