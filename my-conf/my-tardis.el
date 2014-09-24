(require 's)

;; We use Clomacs to generate wrappers which let us easily communicate with
;; the TARDIS.
(add-to-list 'load-path
             (concat user-emacs-directory "/vendor/clomacs/src/elisp/"))
(require 'clomacs)

;; We handle our connection to the TARDIS ourselves, no need to use the
;; automatic guesswork in Clomacs.
(setq clomacs-verify-nrepl-on-call nil)

(defun study-tardis ()
  "This command asks the TARDIS for all the functions it exposes
  to the sonic screwdriver and generates Emacs wrappers for them."
  (interactive)
  (clomacs-defun tardis-equip-sonic-screwdriver
                 tardis.core/equip-sonic-screwdriver)
  (dolist (var (read (tardis-equip-sonic-screwdriver)))
    (eval (list 'clomacs-defun
                (intern (second (s-split "/" (symbol-name var))))
                var))))

(defun connect-to-tardis ()
  "This command connects to the TARDIS via nREPL (CIDER) and
  calls study-tardis to hook up Emacs commands to the functions
  it exposes."
  (interactive)
  (cider "127.0.0.1" "22411")
  (study-tardis))
