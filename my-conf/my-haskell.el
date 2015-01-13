;; Turn on basic goodies
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)


;; Structured Haskell Mode
(proceed-with-executable "structured-haskell-mode"

  (autoload 'structured-haskell-mode "shm")
  ;(add-hook 'haskell-mode-hook 'structured-haskell-mode)

  (eval-after-load "shm"
    '(progn
       ;; Use haskell-interactive-mode to enable case-split
       (require 'shm-case-split)
       (define-key shm-map (kbd "C-c C-s") 'shm/case-split))))


;; Use haskell-interactive-mode instead of inferior-haskell-mode
(define-key haskell-mode-map (kbd "C-x C-d") nil)
(define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
(define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c M-.") nil)
(define-key haskell-mode-map (kbd "C-c C-d") nil)


;; ghc-mod
(proceed-with-executable "ghc-mod"
  (autoload 'ghc-init "ghc" nil t)
  (autoload 'ghc-debug "ghc" nil t)
  (add-hook 'haskell-mode-hook (lambda () (ghc-init))))


;; hindent
(define-key haskell-mode-map (kbd "C-c i") 'hindent/reformat-decl)
