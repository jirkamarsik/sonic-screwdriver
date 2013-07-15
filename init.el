;; Include my configuration scripts in the load-path.
(add-to-list 'load-path "~/.emacs.d/my-conf")

;; Load all the parts of my configuration.
(dolist (section-name ("defuns"
                       "pkgs"
                       "ido"
                       "smex"
                       "evil"
                       "prog"
                       "elisp"
                       "clojure"
                       "text"
                       "latex"
                       "misc"
                       "bindings"
                       "theme"))
  (load (concat "my-" section-name)))
