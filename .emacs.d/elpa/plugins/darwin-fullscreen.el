

;;provide max frame function
(defun fullscreen-maximize-frame ()
  (if window-system
      (toggle-frame-maximized)))

(provide 'darwin-fullscreen)
