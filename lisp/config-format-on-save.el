;; Prettier para JavaScript/TypeScript
(use-package prettier-js
  :ensure t
  :hook ((js-mode . prettier-js-mode)
         (typescript-mode . prettier-js-mode)))

;; Formatação ao salvar para JavaScript/TypeScript
(add-hook 'js-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'prettier-js nil t)))

(add-hook 'typescript-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'prettier-js nil t)))

;; Blacken para Python
(use-package blacken
  :ensure t
  :hook (python-mode . blacken-mode))

;; Formatação ao salvar para Python
(add-hook 'python-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'blacken-buffer nil t)))
