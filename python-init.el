;; enable flycheck
(require 'flycheck)
(global-flycheck-mode 1)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(global-set-key (kbd "<f2>") 'flycheck-next-error)

(setq python-shell-interpreter "python3")
