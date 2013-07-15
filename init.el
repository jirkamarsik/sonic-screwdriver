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
                        "spell"
                        "text"
                        "latex"
                        "markdown"
                        "git"
                        "misc"
                        "bindings"
                        "tardis"
                        "theme"))
  (load (concat "my-" section-name)))
