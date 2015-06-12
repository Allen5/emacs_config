
;;c,cpp mode的配置

;;加载google-c-style 配置
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/plugins/google-c-style"))
(require 'google-c-style)

;;配置c mode生效
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;;配置c++ mode生效
(add-hook 'c++-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-common-hook 'google-make-newline-indent)

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

;;自定义文件版权信息模板
(defconst doxymacs-C++-file-comment-template
 '(
   "/******************************************************************************" > n
   "*" > n
   "* " "FILE NAME   :"
   (if (buffer-file-name)
       (file-name-nondirectory (buffer-file-name))
     "") > n
   "*" " DESCRIPTION :"> n
   "*" "    "> n
   "*" " DATE     :" (format-time-string "%Y-%m-%d %H:%M:%S" (current-time))
   "" > n
   "*" " AUTHOR   : Allen.Wu(allenlikeu@gmail.com)"> n
   "*" > n
   "*" "******************************************************************************/"> n)
 "Allen.Wu C++-style template for file documentation.")




