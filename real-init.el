;; Flexible matching when searching for files, etc.
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Windmove
(windmove-default-keybindings 'meta)

;; Mail
(setq user-mail-address "viktor.stahl.trash@gmail.com")

;; No Beep
(setq visible-bell 1)

;; Load Python settings
(load "~/.emacs.d/python-init.el")
