
;;配置cmake mode
(load "~/.emacs.d/elpa/mode/cmake-mode.el")
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
		("\\.cmake\\'" . cmake-mode))
	      auto-mode-alist))
