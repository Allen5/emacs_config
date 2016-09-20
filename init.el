;;; 初始化配置的入口

;; 设定lisp文件路径
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 设定elpa目录路径
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))

;; 定义常量
(defconst *spell-check-support-enable* nil) ;;默认关闭拼写检查
(defconst *is-a-mac* (eq system-type 'darwin)) ;;判断是否为mac

;;-----------------------------------------------------------
;; 启动项配置
;;-----------------------------------------------------------
(require 'init-compat) ;; 版本兼容性相关函数
(require 'init-utils) ;;工具类函数
(require 'init-site-lisp) ;;在init-package之前初始化
(require 'init-elpa) ;;初始化包管理器
(require 'init-exec-path) ;; 设置可执行路径到 $PATH

;;-----------------------------------------------------------
;; 用户自定义预加载配置
;;-----------------------------------------------------------
(require-package 'undo-tree) ;; 开启undo tree
(global-undo-tree-mode)

;;-----------------------------------------------------------
;; 包设定
;;-----------------------------------------------------------
(require-package 'wgrep)
(require-package 'project-local-variables)
(require-package 'diminish)
(require-package 'scratch)
(require-package 'mwe-log-commands)
(require-package 'wakatime-mode)

;;-----------------------------------------------------------
;; UI界面配置
;;-----------------------------------------------------------
(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-themes)
(require 'init-gui-frames)
(require 'init-nyan-mode)
(require 'init-golden-ratio)

;;-----------------------------------------------------------
;; 辅助工具配置
;;-----------------------------------------------------------
(require 'init-project-tile)
(require 'init-recentf)
(require 'init-helm)
(require 'init-custom-funs)
(require 'init-editing)
(require 'init-smex)
(require 'init-window)
(require 'init-flycheck)
(require 'init-grep)
(require 'init-uniquify)
(require 'unicad)
(require 'init-git)
(require 'init-ibuffer)
(require 'init-dired-plus)
(require 'init-ztree)
(require 'init-highlight-numbers)
(require 'init-highlight-symbol)

;;-----------------------------------------------------------
;; 自动补全
;;-----------------------------------------------------------
(require 'init-company)
(require 'init-auto-complete)
(require 'init-yasnippet)

;;-----------------------------------------------------------
;; 编程语言支持
;;-----------------------------------------------------------
(require 'init-python-mode)
(require 'init-javascript)
(require 'init-web)
(require 'init-cmake)
(require 'init-cpp)

;;-----------------------------------------------------------
;; 加载个人隐私信息
;;-----------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
