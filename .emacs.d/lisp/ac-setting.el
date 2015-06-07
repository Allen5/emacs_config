
;;auto complete settings
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/auto-complete-suite"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/auto-complete-suite/auto-complete"))

(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-suite/auto-complete/dict")
(ac-config-default)

;;start global auto complete
(global-auto-complete-mode t)

;;set pop up tips
(require 'pos-tip)
(setq ac-quik-help-prefer-pos-tip t)

;;set quick help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.5)

;;set tab mode
(setq ac-dwim t)

;;set auto complete trigger
(setq ac-auto-start nil)
(ac-set-trigger-key "<C-return>")
(setq ac-trigger-commands
	  (cons 'backward-delete-char-untabify ac-trigger-commands))

;;set fuzzy
(setq ac-fuzzy-enable t)

;;auto complete clang settings
(require 'auto-complete-clang)

(defun self-ac-config()
  (setq ac-clang-flags
		(mapcar(lambda (item)(concat "-I" item))
			   (split-string
				"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1
 /usr/local/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/6.1.0/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
 /usr/include
 /System/Library/Frameworks (framework directory)
 /Library/Frameworks (framework directory)")))
  (setq-default ac-source '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)  
  (add-hook 'css-mode-hook 'ac-css-mode-setup)  
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (add-hook 'auto-c-mode-hook 'self-cc-mode-setup())
  (add-hook 'auto-c++-mode-hook 'self-cc-mode-setup()))

(defun self-cc-mode-setup()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(self-ac-config)

;;yasnippet settings
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/auto-complete-suite/yasnippet"))
(require 'yasnippet)
(yas-global-mode t)

(provide 'ac-setting)
