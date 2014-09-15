;; Setup package.el to use MELPA and MELPA-STABLE (http://melpa.milkbox.net/).
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
;; Also add Marmalade (e.g. for nrepl-discover).
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Download the package list from MELPA.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Install package-filter before proceeding
(when (not (package-installed-p 'package-filter))
 (progn
  (switch-to-buffer
   (url-retrieve-synchronously
    "https://raw.github.com/milkypostman/package-filter/master/package-filter.el"))
   (package-install-from-buffer (package-buffer-info) 'single)))

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

;; Use ghc from MELPA-STABLE so that it is in line with cabal ghc-mod.
(setq package-archive-exclude-alist '(("melpa" . (ghc))))

;; Check and install all the packages.
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
