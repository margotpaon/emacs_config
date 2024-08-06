;; Configuração para YAML
(use-package yaml-mode
  :ensure t
  :mode ("\\.yaml\\'" "\\.yml\\'")
  :config
  ;; Configura a indentação padrão para arquivos YAML
  (setq yaml-mode-indent-offset 2) ; Ajuste o valor conforme sua preferência
  ;; Adiciona hooks para personalizar o modo YAML
  (add-hook 'yaml-mode-hook
            (lambda ()
              ;; Outras configurações ou personalizações podem ser adicionadas aqui
              (setq-local comment-auto-fill-only-comments t) ; Exemplo de configuração
              (auto-fill-mode 1))))

(provide 'config-yaml)


