;; 配置界面&UI

;; 老版本emacs兼容判断
(when (< emacs-major-version 24)
  (require-package 'color-theme))

(require-package 'color-theme-sanityinc-solarized)

;; 使用color-theme支持老版本的主题
(defcustom window-system-color-theme 'color-theme-sanityinc-solarized-dark
  "Color theme to use in window-system frames.
If Emacs' native theme support is available, this setting is ignored: use `custom-enabled-themes' instead."
  :type 'symbol)

(defcustom tty-color-theme 'color-theme-terminal
  "Color theme to use in TTY frames.
If Emacs' native theem support is available, this setting is ignored: use `custom-enabled-themes' instead."
  :type 'symbol)

(unless (boundp 'custom-enabled-themes)
  (defun color-theme-terminal ()
    (interactive)
    (color-theme-solarized-dark))
  (defun apply-best-color-theme-for-frame-type (frame)
    (with-selected-frame frame
      (funcall (if window-system
		   window-system-color-theme
		 tty-color-theme))))

  (defun reapply-color-themes ()
    (interactive)
    (mapcar 'apply-best-color-theme-for-frame-type (frame-list)))

  (set-variable 'color-theme-is-global nil)
  (add-hook 'after-make-frame-functions 'apply-best-color-theme-for-frame-type)
  (add-hook 'after-init-hook 'reapply-color-themes)
  (apply-best-color-theme-for-frame-type (selected-frame)))

;; 新版本主题支持
;; If you don't customize it, this is the theme you get
(setq-default custom-enabled-themes '(sanityinc-solarized-dark))

(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme t)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)

;; 切换深浅色主题
(defun light ()
  "Activate a light color theme."
  (interactive)
  (color-theme-sanityinc-solarized-light))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (color-theme-sanityinc-solarized-dark))

(provide 'init-themes)
