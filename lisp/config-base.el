;; Configuração Base
;; Gerenciamento de pacotes e configurações gerais

;; Adicionar suporte para Emmet (opcional, mas útil para HTML/CSS)
(use-package emmet-mode
  :hook ((html-mode css-mode web-mode) . emmet-mode)
  :config
  (setq emmet-indentation 2))

;; Adicionar suporte para Autocompletar
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.0)) ;; Show suggestions immediately

;; Suporte a Snippets
(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all))

(use-package yasnippet-snippets
  :after yasnippet)


;; Melhor interação com git
(use-package magit
  :commands magit-status)

;; Melhor interface para autocompletar
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(use-package counsel
  :after ivy
  :config (counsel-mode))

(use-package which-key
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode))
