;; Add automatic line breaks in comments to programming language modes.
(add-hook 'prog-mode-hook 'local-comment-auto-fill)

;; Add word highlighting to programming language modes.
(add-hook 'prog-mode-hook 'idle-highlight-mode)
