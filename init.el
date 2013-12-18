;; Include my configuration scripts and vendor code to the load-path.
(add-to-list 'load-path "~/.emacs.d/my-conf")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Load all the parts of my configuration.
(dolist (section-name '("defuns"
                        "pkgs"
                        "ido"
                        "smex"
                        "evil"
                        "prog"
                        "elisp"
                        "clojure"
                        "haskell"
                        "spell"
                        "text"
                        "latex"
                        "markdown"
                        "git"
                        "misc"
                        "bindings"
                        "tardis"
                        "org"))
  (load (concat "my-" section-name)))


;;; Bits from Customize below...
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
