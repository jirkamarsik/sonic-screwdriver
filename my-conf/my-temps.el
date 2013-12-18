(defun simplify-sexp-formula-at-point ()
  "Simplifies the s-expression-encoded logical formula at point."
  (interactive)
  (let* ((formula-bounds (bounds-of-thing-at-point 'sexp))
         (beg (car formula-bounds))
         (end (cdr formula-bounds))
         (formula (buffer-substring beg end))
         (simplified (simplify-sexp-formula formula)))
    (delete-region beg end)
    (insert simplified)))

(defun simplify-sexp-formula-at-point-and-advance ()
  "Simplifies the s-expression-encoded logical formula at point
  and advances the point to the next formula while inserting a
  newline."
  (interactive)
  (simplify-sexp-formula-at-point)
  (evil-forward-char)
  (newline-and-indent))
