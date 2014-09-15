;; Enable Evil mode on launch.
(evil-mode 1)

;; Load evil-paredit along with paredit.
(eval-after-load "paredit"
  '(progn (require 'evil-paredit)
          (add-hook 'paredit-mode-hook 'evil-paredit-mode)))

(define-key evil-normal-state-map "\M-." nil)
