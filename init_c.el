;;; init_c --- Initialize C config

;;; Commentary:

;;; Code:

;; Add Arduino to C mode
(add-to-list 'auto-mode-alist '(".ino" . c-mode))

;; clang analyser
(with-eval-after-load 'flycheck
   (require 'flycheck-clang-analyzer)
   (flycheck-clang-analyzer-setup))

;;; init_c.el ends here
