;; Getting rid of the "Welcome to Emacs!" screen.
(setq inhibit-splash-screen t)

;; No scrollbars
(scroll-bar-mode 0)
(if (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode 0))

;; Flash the frame on bell.
(setq visible-bell t)

;; Set fill column limit to 75 (instead of the default 70).
(setq-default fill-column 75)

;; Always show column number as well as line number.
(column-number-mode)

;; Always highlight the current line.
(global-hl-line-mode)

;; Initiate GC on allocating every 20 MB, instead of 0.76 MB
(setq gc-cons-threshold 20000000)
