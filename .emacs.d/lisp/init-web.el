
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php$" . web-mode))

;;make view templates jade highlight synatx
(require 'jade-mode)

(provide 'init-web)
