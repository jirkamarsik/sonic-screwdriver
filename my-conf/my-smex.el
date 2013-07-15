;; Put .smex-items inside .emacs.d.
(setq smex-save-file (concat user-emacs-directory ".smex-items"))

;; Add bindings for smex.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Disable advice for using the menus.
(setq smex-key-advice-ignore-menu-bar t)
