
;;UI相关配置

;;设置当前主题
(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark))))

;;设置字体
(custom-set-faces
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 160 :width normal)))))

;;设置powerline插件的形状与颜色
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/plugins/powerline"))
(require 'powerline)
(setq powerline-arrow-shape 'arrow)   ;; the default
(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")


