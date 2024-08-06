;; Configuração para TypeScript e TypeScript JSX
(use-package typescript-mode
  :mode ("\\.ts\\'" . typescript-mode)
  :mode ("\\.tsx\\'" . typescript-mode)
  :config
  (setq typescript-indent-level 2))