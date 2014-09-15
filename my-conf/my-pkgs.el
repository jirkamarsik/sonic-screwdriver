;; Setup package.el to use Melpa, Melpa-stable and Marmalade.
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)


;; Install and setup package-filter before fetching arhive contents...
(require 'package-filter)

;; Use ghc from MELPA-STABLE so that it is in line with cabal ghc-mod.
(setq package-archive-exclude-alist '(("melpa" . (ghc))))


;; Load the archive contents.
(package-initialize)

;; Download the package lists. (redundant?)
(when (not package-archive-contents)
  (package-refresh-contents))


;; Install the desired packages.
(defvar my-packages '(better-defaults
                      ido-ubiquitous
                      smex
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
                      flycheck
                      flycheck-haskell
                      git-gutter
                      markdown-mode
                      solarized-theme
                      s
                      tuareg
                      idris-mode
                      elm-mode
                      fsharp-mode)
  "A list of packages that should be installed.")


;; Check and install all the packages.
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
