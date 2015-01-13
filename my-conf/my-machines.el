(require 's)


(defvar on-honey-badger (s-contains? system-name "honey-badger"))
(defvar in-linux (eq system-type 'gnu/linux))
(defvar debian (and in-linux on-honey-badger))
(defvar nixos (and in-linux (not on-honey-badger)))
(defvar windows (not in-linux))


;; CUFP Agda tutorial on Debian's honey-badger.
(when (and on-honey-badger in-linux)
  (custom-set-variables
   '(agda2-include-dirs '("." "/home/jirka/Projects/cufp/agda-prelude/src"))))


;; Set the Idris interpreter path accordingly.
(custom-set-variables
 `(idris-interpreter-path
   ,(cond (debian "/home/jirka/cabal-sandboxes/Idris/.cabal-sandbox/bin/idris")
          (nixos "/home/jirka/.nix-profile/bin/idris"))))
