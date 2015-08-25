
;; 设置 protobuffer 高亮
(require-package 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))

;; 设置 flatbuffer 高亮

;; 设置 自定义 高亮

(provide 'init-idl)
