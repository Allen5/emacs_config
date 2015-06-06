
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

(provide 'common)
