(autoload 'eff-mode "eff-mode" "Major mode for editing eff files" t)

(add-to-list 'auto-mode-alist '("\\.eff$" . eff-mode))
