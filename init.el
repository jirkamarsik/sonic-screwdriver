;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Include my configuration scripts and vendor code to the load-path.
(add-to-list 'load-path (concat user-emacs-directory "/my-conf"))
(add-to-list 'load-path (concat user-emacs-directory "/vendor"))

;; Load all the parts of my configuration.
(dolist (section-name '("pkgs"
                        "defuns"
                        "ido"
                        "smex"
                        "projectile"
                        "evil"
                        "prog"
                        "elisp"
                        "clojure"
                        "tardis"
                        "haskell"
                        "flycheck"
                        "ocaml"
                        "eff"
                        "prolog"
                        "spell"
                        "text"
                        "latex"
                        "markdown"
                        "git"
                        "coq"
                        "agda"
                        "acg"
                        "browser"
                        "misc"
                        "org"
                        "bindings"))
  (load (concat "my-" section-name)))


;;; Bits from Customize below...
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("." "/home/jirka/.nix-profile/share/agda")))
 '(browse-url-browser-function (quote browse-url-generic))
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(haskell-process-type (quote cabal-repl))
 '(hindent-style "chris-done")
 '(idris-interpreter-path
   (cond
    (debian "/home/jirka/cabal-sandboxes/Idris/.cabal-sandbox/bin/idris")
    (nixos "/home/jirka/.nix-profile/bin/idris")))
 '(package-selected-packages
   (quote
    (coffee-mode nix-mode fsharp-mode elm-mode idris-mode tuareg solarized-theme markdown-mode git-gutter flycheck-haskell flycheck hindent shm ghc haskell-mode cider clojure-mode elisp-slime-nav idle-highlight-mode rainbow-delimiters evil-paredit paredit evil f s projectile smex flx-ido ido-ubiquitous better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)

(load "my-machines")
