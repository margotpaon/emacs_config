;; Configuração para Markdown
(use-package markdown-mode
  :mode ("\\.md\\'" . markdown-mode)
  :config
  (setq markdown-command "pandoc"))

(use-package markdown-preview-mode
  :after markdown-mode
  :commands markdown-preview-mode
  :config
  (add-hook 'markdown-mode-hook 'markdown-preview-mode))

;; Alternativa para a visualização de Markdown em tempo real
(use-package grip-mode
  :if (executable-find "grip")
  :commands grip-mode
  :config
  (add-hook 'markdown-mode-hook 'grip-mode))
