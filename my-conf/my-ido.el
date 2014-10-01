;; Enable IDO everywhere.
(ido-ubiquitous-mode 1)

;; Enable opening of closed files by switching buffers.
(setq ido-use-virtual-buffers t)

;; Use flx for matching
(require 'flx-ido)
(flx-ido-mode 1)


;; disable ido faces to see flx highlights
(setq ido-enable-flex-matching t)
(setq ido-use-face nil)
