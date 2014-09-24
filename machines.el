(require 's)


(defvar on-honey-badger (s-contains? system-name "honey-badger"))
(defvar in-linux (eq system-type 'gnu/linux))
(defvar debian (and on-honey-badger in-linux))


;; Use solarized-light on honey-badger's Debian, otherwise use
;; solarized-dark.
(custom-set-variables
 '(custom-enabled-themes (if debian '(solarized-light) '(solarized-dark))))


;; CUFP Agda tutorial on Debian's honey-badger.
(when (and on-honey-badger in-linux)
  (custom-set-variables
   '(agda2-include-dirs '("." "/home/jirka/Projects/cufp/agda-prelude/src"))))


;; Set the Idris interpreter path accordingly.
(custom-set-variables
 '(idris-interpreter-path
   (cond (debian "/home/jirka/cabal-sandboxes/Idris/.cabal-sandbox/bin/idris"))))
