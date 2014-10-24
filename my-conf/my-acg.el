;; ACG mode

(proceed-with-executable "acg"
  (add-to-list 'auto-mode-alist '("\\.acg" . acg-mode))
  (autoload 'acg-mode "acg" "Major mode for editing ACG definitions" t))
