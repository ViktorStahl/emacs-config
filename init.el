(setq default-directory "d:/programming/sysdev-vt2020-ViktorStahl/")
(find-file default-directory)

(setq inhibit-startup-screen t)

;; No n00b stuff
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Show trailing whitespaces and tabs
(setq whitespace-style '(face trailing tabs))
(global-whitespace-mode)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Start Emacs in fullscreen mode
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Use spaces instead of tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;line numbers
(global-display-line-numbers-mode)

;; Show colum number
(setq column-number-mode 1)

;; highlight matching parenthesis
(show-paren-mode 1)

;; automatic closing of brackets and quotes
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap 1)

;; Flexible matching when searching for files, etc.
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; highlight word under cursor
(require 'highlight-thing)
(global-highlight-thing-mode)

(require 'windmove)
(windmove-default-keybindings 'meta)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "<f11>") 'mc/edit-lines)
(global-set-key (kbd "C-<f11>") 'mc/mark-all-like-this)
(global-set-key (kbd "<f9>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<f9>") 'mc/skip-to-next-like-this)
(global-set-key (kbd "<f10>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-<f10>") 'mc/skip-to-previous-like-this)

;; enable flycheck
(require 'flycheck)
(global-flycheck-mode 1)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(global-set-key (kbd "<f2>") 'flycheck-next-error)

;; y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `(("." . "~/.emacs.d/saves")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/saves/" t)))

(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive) (revert-buffer t t))
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)

;; No beeping
(setq ring-bell-function 'ignore)

;; Delete selected region when inserting text
(delete-selection-mode 1)

;; Init python specific settings
(load "~/.emacs.d/init_python.el")

;; Init C specific settings
(load "~/.emacs.d/init_c.el")
