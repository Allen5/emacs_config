;;不显示工具栏
(tool-bar-mode 0)

;;不现实菜单栏
(menu-bar-mode 0)

;;不显示滚动条
(scroll-bar-mode 0)

;;显示行号与列号
(global-linum-mode 1)
(column-number-mode 1)

;;关闭启动动画
(setq inhibit-startup-message 1)

;;设置初始工作目录
(if (string-equal system-type "windows-nt")
    (setq default-directory "G:\\projects")
  (setq default-directory "~/work"))

;;设置问答提示为 y-or-n,而不是yes-or-no
(fset 'yes-or-no-p 'y-or-n-p)

;;不生成备份文件，即 xxx.xx~ 类文件
(setq make-backup-files nil)

;;不同的平台加载不同的文件,启动最大化配置
(if (string-equal system-type "windows-nt")
    (load "~/.emacs.d/elpa/plugins/w32-fullscreen.el")
  (if (string-equal system-type "gnu/linux")
      (load "~/.emacs.d/elpa/plugins/linux-fullscreen.el")
    (if (string-equal system-type "darwin")
	(load "~/.emacs.d/elpa/plugins/darwin-fullscreen.el"))))

;;启动最大化函数调用
(fullscreen-maximize-frame)


