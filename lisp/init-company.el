;;; 配置company插件，用于文本自动补全。可配合后端插件如clang, gtags完成自动补全
(require-package 'company)

(add-hook 'after-init-hook 'gloabl-company-mode)

(provide 'init-company)
