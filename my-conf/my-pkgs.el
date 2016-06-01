;; Setup package.el to use melpa, melpa-stable and marmalade.
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)


;; Use some plugins from melpa-stable so that they align with proper
;; versions of server components.
(if (version< emacs-version "24.3.50.1")
  (progn
    (require 'package-filter)
    (setq package-archive-exclude-alist '(("melpa" . (cider ghc)))))
  (progn
    (setq package-pinned-packages '((cider . "melpa-stable")
                                    (ghc . "melpa-stable")))))


;; Load the archive contents.
(package-initialize)

;; Download the package lists. (redundant?)
(when (not package-archive-contents)
  (package-refresh-contents))


;; Install the desired packages.
(setq my-packages '(better-defaults
                    ido-ubiquitous
                    flx-ido
                    smex
                    projectile
                    dash
                    s
                    f
                    evil
                    undo-tree
                    paredit
                    evil-paredit
                    rainbow-delimiters
                    idle-highlight-mode
                    elisp-slime-nav
                    clojure-mode
                    cider
                    haskell-mode
                    ghc
                    shm
                    hindent
                    flycheck
                    flycheck-haskell
                    git-gutter
                    markdown-mode
                    solarized-theme
                    tuareg
                    idris-mode
                    elm-mode
                    fsharp-mode
                    coffee-mode
                    purescript-mode
                    psci
                    auctex
                    auctex-latexmk
                    auctex-lua
                    nix-mode))


;; Check and install all the packages.
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
