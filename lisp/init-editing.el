
;; 编辑属性设置

;; 设置问答为简问答
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件
(setq make-backup-files nil)

;; 开启ido-mode
(ido-mode 1)

;; 设置默认的tab模式为空格，且为4格
(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
(dolist (hook (list
	       'python-mode
	       'html-node
	       'js-mode
	       'erlang-mode
	       'go-mode
	       ))
  (add-hook hook '(lambda () (setq indent-tabs-mode nil))))

(provide 'init-editing)


