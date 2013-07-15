;; RET should do indentation.
(global-set-key (kbd "RET") 'newline-and-indent)

;; Add handy keys for changing font size.
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; More comfortable switching of spell-checker dictionaries.
(global-set-key (kbd "<f6>") 'cycle-ispell-languages)
