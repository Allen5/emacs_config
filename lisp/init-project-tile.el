
;; 配置project tile全局搜索文件
(require-package 'projectile)
(require 'projectile)

;; 全局默认使用
(projectile-global-mode)

;; 开启缓存，提高搜索速度
(setq projectile-enable-caching 1)

(global-set-key [(super shift o)] 'projectile-find-file)

(provide 'init-project-tile)
