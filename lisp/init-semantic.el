;;; 初始化 & 配置 semantic

(require 'cc-mode)
(require 'semantic)

(semantic-mode 1)

(global-semanticdb-minor-mode 1)
;; (global-semanticdb-idle-scheduler-mode 1) 找不到

(provide 'init-semantic)
