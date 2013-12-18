;; RET should do indentation.
(global-set-key (kbd "RET") 'newline-and-indent)

;; Add handy keys for changing font size.
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; More comfortable switching of spell-checker dictionaries.
(global-set-key (kbd "<f6>") 'cycle-ispell-languages)


;;; TEMPORARY STUFF

;; Simplifying the ugly formulas coming out of my semantic experiments.
(global-set-key (kbd "C-c C-t C-s") 'simplify-sexp-formula-at-point)

;; Doing the above while conveniently placing the cursor for iterated
;; application of the same.
(global-set-key (kbd "<f9>") 'simplify-sexp-formula-at-point-and-advance)
