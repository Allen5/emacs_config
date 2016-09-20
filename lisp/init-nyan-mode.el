;;; 配置 minor mode 中的进度条

(require-package 'nyan-mode)

(case window-system
  ((x w32) (nyan-mode)))

(provide 'init-nyan-mode)
