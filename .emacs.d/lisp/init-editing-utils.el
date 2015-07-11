
;;设置问答提示为 y-or-n,而不是yes-or-no
(fset 'yes-or-no-p 'y-or-n-p)

;;不生成备份文件，即 xxx.xx~ 类文件
(setq make-backup-files nil)

;; 设置默认的tab模式为空格，且为4格
(setq-default indent-tabs-mode t)       ;默认不用空格替代TAB
(setq default-tab-width 4)              ;设置TAB默认的宽度
(dolist (hook (list                     ;设置用空格替代TAB的模式
               'c-mode-hook
               'c++-mode-hook
			   'php-mode
			   'html-mode
               ))
  (add-hook hook '(lambda () (setq indent-tabs-mode nil))))

;;显示行号与列号
(global-linum-mode 1)
(column-number-mode 1)

;;TODO: config edit operations here

(provide 'init-editing-utils)
