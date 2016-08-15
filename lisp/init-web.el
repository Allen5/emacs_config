;; 配置web开发环境 html, css, 内嵌代码, 各种模板引擎

(require-package 'web-mode)
(require 'web-mode)

;; 支持plain html
;; (add-to-list 'auto-mode-alist '("\\.html?\\" . web-mode))


;; 设定indent

;; (setq web-mode-markup-indent-offset 2)
;; (setq web-mode-css-indent-offset 2)
;; (setq web-mode-code-indent-offset 2)


;; 设置style face color
;;(set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")

;; 高亮当前行
;; (setq web-mode-enable-current-element-highlight 1)

;; 设置自动补全
;; (setq web-mode-ac-sources-alist
;; 	  '(("css" . (ac-source-css-property))
;; 		("html" . (ac-source-words-in-buffer ac-source-abbrev))))

(provide 'init-web)
