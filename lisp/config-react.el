;; Configuração para React e JSX
(use-package rjsx-mode
  :mode ("\\.js\\'" . rjsx-mode)
  :mode ("\\.jsx\\'" . rjsx-mode)
  :config
  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
  (setq js-indent-level 2))

  ;; Configuração para Angular
(use-package angular-mode
  :ensure t
  :mode (("\\.html?\\'" . angular-mode)
         ("\\.ts\\'" . angular-mode)
         ("\\.scss\\'" . angular-mode))
  :config
  (setq angular-mode-enable-auto-pairing t)
  (setq angular-mode-enable-auto-closing t)
  (setq angular-mode-enable-auto-quoting t)
  (setq angular-mode-enable-css-colorization t)
  (setq angular-mode-enable-current-element-highlight t)
  (setq js-indent-level 2))

;; Configuração para Svelte
(use-package svelte-mode
  :ensure t
  :mode "\\.svelte\\'")

;; Configuração para Vue.js
(use-package vue-mode
  :ensure t
  :mode "\\.vue\\'")
