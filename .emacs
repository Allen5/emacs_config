
;;add config list
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/git-emacs"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/cogre"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/common"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/contrib"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/ede"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/eidio"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/semantic"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/speedbar"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/cedet/srecode"))


;;load common config
(require 'common)

;;according os type load diff config
(if (string-equal system-type "windows-nt")
    (require 'w32-fullscreen))
(if (string-equal system-type "gnu/linux")
    (require 'linux-fullscreen))

;;fix chinese encoding
(require 'unicad)

;;start wakatime
(require 'wakatime-mode)
(global-wakatime-mode 1)

;;load keybind
(require 'keybind)

;;Start on maximize-frame
(fullscreen-maximize-frame)

;;load git config
(require 'git-emacs)

;;load cedet
(require 'cedet)

;;semantic settings
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

;;start ede mode
(global-ede-mode 1)
