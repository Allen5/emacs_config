
;;make emacs in maximize-frame
(defun fullscreen-maximize-frame ()
  (interactive)
  (w32-send-sys-command 61488))

(provide 'w32-fullscreen)
