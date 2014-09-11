(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(progn
     (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
     
     (require 'flycheck-liquid)
     (flycheck-add-next-checker 'haskell-ghc '(warnings-only . haskell-liquid) 'append)
     (add-to-list 'flycheck-disabled-checkers 'haskell-liquid)))
