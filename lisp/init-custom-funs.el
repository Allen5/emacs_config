
;;自定义辅助函数
(defun reload-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))

(provide 'init-custom-funs)
