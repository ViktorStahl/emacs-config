(custom-set-variables
 '(flycheck-python-flake8-executable "d:/Python38/Scripts/flake8.exe")
 '(flycheck-python-pylint-executable "d:/Python38/Scripts/pylint.exe")
 )
(setq python-shell-interpreter "python3")

(flycheck-add-next-checker 'python-flake8 'python-pylint)
