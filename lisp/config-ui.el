;; Configuração opcional para melhorar a interface do Emacs
(use-package doom-themes
  :config
  (load-theme 'doom-one t))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(use-package all-the-icons)
