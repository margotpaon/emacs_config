;; lisp/migemo-config.el
(use-package migemo
  :ensure t
  :init
  (setq migemo-command "/home/linuxbrew/.linuxbrew/bin/cmigemo")
  (setq migemo-options '("-q" "--emacs"))
  (setq migemo-dictionary "/home/linuxbrew/.linuxbrew/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  :config
  (migemo-init))
