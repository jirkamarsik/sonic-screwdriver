;; Include my configuration scripts and vendor code to the load-path.
(add-to-list 'load-path (concat user-emacs-directory "/my-conf"))
(add-to-list 'load-path (concat user-emacs-directory "/vendor"))

;; Load all the parts of my configuration.
(dolist (section-name '("defuns"
                        "pkgs"
                        "libs"
                        "ido"
                        "smex"
                        "evil"
                        "prog"
                        "elisp"
                        "clojure"
                        "tardis"
                        "haskell"
                        "ocaml"
                        "eff"
                        "spell"
                        "text"
                        "latex"
                        "markdown"
                        "git"
                        "coq"
                        "science"
                        "misc"
                        "org"
                        "temps"
                        "bindings"))
  (load (concat "my-" section-name)))


;;; Bits from Customize below...
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
