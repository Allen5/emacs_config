;;; 下载recentf-ext包
(require-package 'recentf-ext)

;;; 配置recent files
(recentf-mode 1)
(setq recentf-max-saved-items 1000
      recentf-exclude '("/tmp/" "/ssh:"))

;;; 配置recentf-ext
(require 'recentf-ext)


(provide 'init-recentf)
