;; Setup package.el to use MELPA (http://melpa.milkbox.net/).
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Download the package list from MELPA.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Install the desired packages from MELPA.
(defvar my-packages '(better-defaults)
  "A list of packages to ensure they are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
