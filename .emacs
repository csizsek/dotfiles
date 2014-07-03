;; scroll just one line
(setq scroll-step 1)

;; indent with spaces
(setq-default indent-tabs-mode nil)

;; marmalade
;;(require 'package)
;;(add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/"))
;;(package-initialize)

;; load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; haskell mode indent
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; line numbers
(global-linum-mode 1)
(custom-set-variables '(linum-format (quote "%4d  ")))

;; disable backup file creation
(setq make-backup-files nil)

;; disable auto save
(setq auto-save-default nil)

