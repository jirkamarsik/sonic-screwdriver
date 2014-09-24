(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(progn
     (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)

     ;; Not using proceed-with-executable, since I always want to use my
     ;; patched version of flycheck-liquid.el.
     (when (executable-find "liquid")
       (require 'flycheck-liquid)
       (flycheck-add-next-checker 'haskell-ghc '(warning . haskell-liquid) 'append)
       (add-to-list 'flycheck-disabled-checkers 'haskell-liquid))))
