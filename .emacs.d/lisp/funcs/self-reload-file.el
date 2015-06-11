
;;重新加载文件函数
(defun reload-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))

(provide 'self-reload-file)

