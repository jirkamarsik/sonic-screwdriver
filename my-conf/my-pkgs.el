;; Setup package.el to use MELPA (http://melpa.milkbox.net/).
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; Also add Marmalade (e.g. for nrepl-discover).
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Download the package list from MELPA.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Install the desired packages from MELPA.
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
                      dash                  ; CIDER dependency
                      pkg-info              ; CIDER dependency
                      haskell-mode
                      git-gutter
                      markdown-mode
                      solarized-theme
                      scala-mode2
                      s
                      tuareg)
  "A list of packages that should be installed.")

;; Check and install all the packages.
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
