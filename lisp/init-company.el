;;; 配置company插件，用于文本自动补全。可配合后端插件如clang, gtags完成自动补全
(require-package 'company)
(require-package 'company-c-headers)

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

;; 配合Clang使用company
(setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map [(tab)] 'company-complete)
;; (define-key c++-mode-map [(tab)] 'company-complete)

;; 配置 头文件自动补全
;; (add-to-list 'company-backends 'company-c-headers)
;; 配置 c++ 头文件路径
;; (add-to-list 'company-c-headers-path-system "/usr/include/c++/4.2.1/")

(provide 'init-company)
