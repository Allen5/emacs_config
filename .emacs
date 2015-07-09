
;;check emacs version
(let ((minver "23.3"))
  (when (version<= emacs-version "23.1")
	(error "Your Emacs it too old -- this config requires v %s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

;;设定lisp文件路径
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;计算启动时间
(require 'init-benchmarking)

;;定义常量
(defconst *spell-check-support-enable* nil) ;;默认关闭拼写检查
(defconst *is-a-mac* (eq system-type 'darwin));;是否mac

;;---------------------------------------------------------
;;启动项配置
;;---------------------------------------------------------

;;用户自定义配置文件
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-compat);;兼容性函数
(require 'init-utils);;工具类函数

;;---------------------------------------------------------
;;以下配置需要更改，但目前未做,暂时使用，作为过渡
;;---------------------------------------------------------
;;加载基本设置
(load "common.el")

;;加载ui设置
(load "init-ui.el")

;;加载package配置
(load "init-package.el")

;;设置ido-mode
(load "init-ido.el")

;;初始化wakatime
(load "init-wakatime.el")

;;加载helm设置
(load "init-helm.el")
;;加载helm-gtags设置
(load "init-helm-gtags.el")

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

;;加载web-mode配置
(load "init-web-mode.el")

;;加载erlang-mode配置
(load "init-erlang-mode.el")

;;加载自定义函数设置，永远在倒数第二个
(load "init-self-funcs.el")

;;加载键绑定设置，永远在最后一个
(load "init-self-kdb.el")

