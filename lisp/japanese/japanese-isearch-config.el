;; lisp/isearch-config.el
(defun my-isearch-mode-setup ()
  "Setup isearch to work with migemo and ddskk."
  (migemo-init)
  (skk-mode))

(add-hook 'isearch-mode-hook 'my-isearch-mode-setup)
