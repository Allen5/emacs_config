
;;快捷键设定

;;开启全屏模式,windows下更好用
;;(global-set-key [f11] 'fullscreen-full-frame)

;;设定 C-x, C-b 操作为打开 helm-buffers-list
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;;配置smex延迟加载
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
