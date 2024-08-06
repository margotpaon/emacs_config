;; Arquivo principal de configuração
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Auto Save
(setq auto-save-default t)  ; Habilita auto-save
(setq auto-save-timeout 20) ; Número de segundos de inatividade antes de salvar
(setq auto-save-interval 200) ; Número de pressionamentos de tecla antes de salvar

;; Arquivo principal de configuração
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))


(setq package-check-signature nil)
(package-initialize)

;; Garantir que use-package esteja instalado
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Gerenciamento de pacotes e configurações gerais
(use-package use-package
  :ensure t)

;; Necessário para que os pacotes sejam instalados automaticamente
(setq use-package-always-ensure t)

;; Carregar arquivos de configuração
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "config-base")
(load "config-react")
(load "config-css-sass")
(load "config-html")
(load "config-org")
(load "config-ui")
(load "config-markdown")
;;(load "config-treemacs")
(load "config-yaml")
(load "config-docker")
(load "config-format-on-save")
(load "config-typescript")
(load "config-pinyin")
;;(load "config-file-explorer")

;; Japanese config 
(add-to-list 'load-path "~/.emacs.d/lisp/japanese")
(load "migemo-config")
(load "skk-setup")
(load "japanese-isearch-config")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(pyim-basedict pyim grip-mode markdown-preview-mode markdown-mode all-the-icons doom-modeline doom-themes org-plus-contrib web-mode sass-mode rjsx-mode which-key counsel ivy magit projectile yasnippet-snippets yasnippet company emmet-mode compat use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
