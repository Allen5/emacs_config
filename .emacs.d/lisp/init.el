
;;此文件用于加载各个模块的初始化文件
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;;加载基本设置
(load "common.el")

;;加载ui设置
(load "init-ui.el")

;;加载自定义函数设置
(load "init-self-funcs.el")

;;加载键绑定设置
(load "init-self-kdb.el")

;;加载package配置
(load "init-package.el")

;;设置ido-mode
(load "init-ido.el")

;;初始化wakatime
(load "init-wakatime.el")

;;加载helm设置
(load "init-helm.el")

;;加载smex设置
(load "~/.emacs.d/elpa/plugins/smex.el")

;;加载unicad设置
(load "~/.emacs.d/elpa/plugins/unicad.el")

;;初始化git-emacs配置
(load "init-git.el")

;;加载php-mode
(load "init-php-mode.el")

;;加载cmake-mode
(load "init-cmake-mode.el")

;;加载markdown-mode
(load "init-markdown-mode.el")

;;加载c,c++ mode配置
(load "init-cpp-mode.el")

