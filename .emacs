
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

(require 'init-compat);;兼容性函数
(require 'init-utils);;工具类函数
(require 'init-site-lisp) ;;在init-package之前初始化这个
(require 'init-elpa)
(require 'init-exec-path) ;; 设置可执行路径到 $PATH

;;---------------------------------------------------------
;;用户自定义预加载配置
;;---------------------------------------------------------
(require 'init-preload-local nil t) ;;可不设置

;;---------------------------------------------------------
;;package 设定
;;---------------------------------------------------------
(require-package 'wgrep)
(require-package 'project-local-variables)
(require-package 'diminish)
(require-package 'scratch)
(require-package 'mwe-log-commands)
(require-package 'wakatime-mode)

;;--------------------------------------------------------
;;界面与全局基础特性配置
;;--------------------------------------------------------
(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-themes)
(require 'init-gui-frames)
(require 'init-dired)
(require 'init-isearch)
(require 'init-grep)
(require 'init-uniquify)
;;(require 'init-flycheck)
(require 'unicad)

(require 'init-recentf)
(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-auto-complete)
(require 'init-windows)
(require 'init-sessions)
(require 'init-mmm)
(require 'init-helm)
(require 'init-helm-gtags)

;;TODO: config edit operations here
(require 'init-editing-utils)

;;TODO: change git config to magit
(require 'init-git)

;;TODO: config compile here

;;load modes
(require 'init-markdown)
(require 'init-csv)
(require 'init-erlang)
(require 'init-javascript)
(require 'init-php)
(require 'init-html)
(require 'init-css)
(require 'init-nxml)
(require 'init-sql)
(require 'init-haml)
(require 'init-python-mode)
(require 'init-cmake)
(require 'init-cpp)

(when *spell-check-support-enable*
 (require 'init-spelling))

(require 'init-misc)
(require 'init-dash)
(require 'init-ledger)

;;额外配置包，无需配置
(require-package 'gnuplot)
(require-package 'lua-mode)
(require-package 'htmlize)
(require-package 'dsvn)
(when *is-a-mac*
  (require-package 'osx-location))
(require-package 'regex-tool)


;;---------------------------------------------------------
;;加载个人配置
;;---------------------------------------------------------
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load custom-file)
(require 'init-self-funcs)

;;----------------------------------------------------
;;显示加载时间
;;----------------------------------------------------
(add-hook 'after-init-hook
          (lambda ()
            (message "init completed in %.2fms"
                     (sanityinc/time-subtract-millis after-init-time before-init-time))))
