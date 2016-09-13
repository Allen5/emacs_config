;;; 配置cmake mode:

(require-package 'cmake-mode)
(setq auto-mode-list
	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
				("\\.cmake\\'" . cmake-mode))
			  auto-mode-alist))

(provide 'init-cmake)
