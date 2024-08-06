;; Melhor navegação de arquivos com Treemacs
(use-package treemacs
  :ensure t
  :bind
  (("C-x t" . treemacs)
   ("C-x T" . treemacs-toggle))  ;; Corrigido o erro de digitação
  :config
  (setq treemacs-width 30)  ;; Ajuste a largura conforme necessário
  (setq treemacs-follow-mode t)  ;; Mantenha o foco na janela atual
  (setq treemacs-project-follow-mode t)  ;; Seguir o projeto ativo
  (setq treemacs-recenter-after-file-follow t) ;; Recentrar após abrir um arquivo
  (setq treemacs-default-directory "~/projetos"))  ;; Define o diretório padrão

;; Configuração para Projectile
(use-package projectile
  :diminish projectile-mode
  :config
  (projectile-mode)
  (setq projectile-project-search-path '("~/projetos"))  ;; Caminho para projetos
  (setq projectile-switch-project-action #'projectile-dired)  ;; Ação padrão ao alternar projetos
  :bind-keymap
  ("C-c p" . projectile-command-map))  ;; Atalhos para comandos do Projectile

