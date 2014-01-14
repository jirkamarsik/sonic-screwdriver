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
 '(custom-enabled-themes (quote (leuven))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
