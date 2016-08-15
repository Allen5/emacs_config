
;; 配置yasnippet
(require-package 'yasnippet)
(require 'yasnippet)

;; 全部有效
(yas-global-mode 1)

;; 屏蔽 tab 键自动提示
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

(provide 'init-yasnippet)
