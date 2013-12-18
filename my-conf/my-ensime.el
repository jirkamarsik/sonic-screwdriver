(add-to-list 'load-path (concat user-emacs-directory
                                "/vendor/ensime_2.10.0-0.9.8.9/elisp"))
(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
