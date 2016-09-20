;;; 配置&初始化 ibuffer-vc 插件
(require-package 'ibuffer-vc)

(add-hook 'ibuffer-hook
		  (lambda ()
			(ibuffer-vc-set-filter-groups-by-vc-root)
			(unless (eq ibuffer-sorting-mode 'alphabetic)
			  (ibuffer-do-sort-by-alphabetic))))

(setq ibuffer-formats
	  '((mark modified read-only vc-status-mini " "
			  (name 18 18 :left :elide)
			  " "
			  (size 9 -1 :right)
			  " "
			  (mode 16 16 :left :elide)
			  " "
			  (vc-status 16 16 :left)
			  " "
			  filename-and-process)))

(provide 'init-ibuffer)
