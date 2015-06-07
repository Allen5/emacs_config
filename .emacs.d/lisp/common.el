
;;set theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(wakatime-api-key "4620f6c4-3daa-460c-9108-8bd05e0af559")
 '(wakatime-cli-path "/usr/local/bin/wakatime"))

;;set font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 160 :width normal)))))

;;close tool bar and menu bar
(tool-bar-mode 0)
(menu-bar-mode 0)

;;close scrollbar
(scroll-bar-mode 0)

;;show line number & column number
(global-linum-mode 1)
(column-number-mode 1)

;;tab

;;close startup message
(setq inhibit-startup-message 1)

;;set auto-indent
(setq indent-tabs-mode 1)
(setq default-tab-width 4)
(setq tab-width 8)
(setq tab-stop-list())

;;set work directory
(if (string-equal system-type "windows-nt")
    (setq default-directory "G:\\projects")
  (setq default-directory "~/work"))

;;set question
(fset 'yes-or-no-p 'y-or-n-p)

;;not create backup files
(setq make-backup-files nil)

;;reload file from disk
(defun reload-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))

;;make smex lazy initializition
(global-set-key [(meta x)] (lambda()
			     (interactive)
			     (or (boundp 'smex-cache)
				 (smex-initialize))
			     (global-set-key [(meta x)] 'smex)
			     (smex)))

(global-set-key [(shift meta x)] (lambda()
				   (interactive)
				   (or (boundp 'smex-cache)
				       (smex-initialize))
				   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
				   (smex-major-mode-commands)))

;;set tabbar and frame title
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/tabbar"))
(require 'tabbar)
(tabbar-mode t)
(global-set-key [(meta k)] 'tabbar-forward)
(global-set-key [(meta j)] 'tabbar-backward)
(global-set-key [(control meta j)] 'tabbar-backward-group)
(global-set-key [(control meta k)] 'tabbar-forward-group)
;;set group strategy
(defun tabbar-buffer-groups ()
  "tabbar group"
  (list
   (cond
    ((memq major-mode '(shell-mode sh-mode))
     "shell"
     )
    ((memq major-mode '(c-mode c++-mode))
     "cc"
     )
    ((memq major-mode '(dired-mode ibuffer-mode))
     "files"
     )
    ((eq major-mode 'python-mode)
     "python"
     )
    ((eq major-mode 'ruby-mode)
     "ruby"
     )
    ((memq major-mode
	   '(php-mode nxml-mode nxhtml-mode))
     "WebDev"
     )
    ((eq major-mode 'emacs-lisp-mode)
     "Emacs-lisp"
     )
    ((memq major-mode
	   '(tex-mode latex-mode text-mode snippet-mode org-mode moinmoin-mode markdown-mode))
     "Text"
     )
    ((string-equal "*" (substring (buffer-name) 0 1))
     "emacs"
     )
    (t
     "other"
     )
    )))
(setq tabbar-buffer-groups-function 'tabbar-buffer-groups)

;;;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
(set-face-attribute 'tabbar-default nil
                    :family "Comic Sans MS" ;"Vera Sans YuanTi Mono"
                    :background "gray30"
                    :foreground "#dcdccc"
                    :height 1.0
                    )

;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "gray30")
                    )
(set-face-attribute 'tabbar-separator nil
                    :inherit 'tabbar-default
                    :foreground "blue"
                    :background "dark gray"
                    :box '(:line-width 2 :color "dark gray" :style 'released-button)
                    )
;(setq tabbar-separator-value "§")
(setq tabbar-separator (list 0.5))
;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "orange" ;"DarkGreen"
                    :background "dark magenta" ;"LightGoldenrod"
                    :box '(:line-width 2
                                       :color "DarkGoldenrod"
                                       :style 'pressed-button)
                    :weight 'bold
                    )
;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "dark gray" :style 'released-button))

;;set mode-line
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/powerline"))
(require 'powerline)
(setq powerline-arrow-shape 'arrow)   ;; the default
(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

(provide 'common)
