(use-package pyim
  :ensure t
  :demand t
  :defer t
  :config
  (use-package pyim-basedict
    :ensure t
    :config
    (pyim-basedict-enable))

  (setq default-input-method "pyim")
  (setq pyim-default-scheme 'quanpin)

  (setq pyim-dicts
        '((:name "pyim-bigdict" :file "~/.emacs.d/pyim-bigdict.pyim")))

  (setq pyim-page-tooltip 'popup)
  (setq pyim-page-length 5)

  (setq pyim-personal-file "~/.emacs.d/pyim-personal.txt")

  (pyim-isearch-mode 1))

;; Definir a chave global após a configuração do pyim
(global-set-key (kbd "C-x w") 'pyim-mode)
(global-set-key (kbd "M-j") 'pyim-convert-string-at-point)
