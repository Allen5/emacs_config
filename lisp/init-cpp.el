;;; 配置c++语言支持， 文件跳转等等

;; 安装ggtags插件
(require-package 'ggtags)

(add-hook 'cmode-common-hook
		  (lambda ()
			(when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
			  (ggtags-mode 1))))

;; 目录浏览模式下开启 ggtags mode
(add-hook 'dired-mode-hook 'ggtags-mode)

(provide 'init-cpp)
