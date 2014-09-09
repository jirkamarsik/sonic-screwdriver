(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(progn
     (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
     (require 'flycheck-liquid)))
