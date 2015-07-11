
;;c,cpp mode的配置
;;设置c,c++ mode下，tab不格式化，且一个tab 4个空格
;;不插入tab，因为tab是邪恶的，各个平台或工具显示的定义不一致
(add-hook 'c-mode-hook
          '(lambda ()
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)))

;;项目使用unix模式，与google-c-style模式不符合，所以暂时屏蔽
;;加载google-c-style 配置
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/plugins/google-c-style"))
;; (require 'google-c-style)

;; ;;配置c mode生效
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; ;;配置c++ mode生效
;; (add-hook 'c++-mode-common-hook 'google-set-c-style)
;; (add-hook 'c++-mode-common-hook 'google-make-newline-indent)

;;加载doxygen配置
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/plugins/doxymacs/lisp"))
(require 'doxymacs)

;;配置随着c mode生效
(add-hook 'c-mode-common-hook 'doxymacs-mode)

;;配置随c++ mode生效
(add-hook 'c++-mode-common-hook 'doxymacs-mode)

;;设置doxymacs符合c++格式
(custom-set-variables
 '(doxymacs-doxygen-style "C++"))

;;加载function args，用于提示函数参数
(require-package 'function-args)
(require 'function-args)
(fa-config-default)

;;默认用cpp mode打开.h文件
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-cpp)


