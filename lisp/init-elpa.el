
;; 包管理器设定

;; init elpa package
;; 根据版本不同，设定正确的package.el
(let ((package-el-site-lisp-dir
       (expand-file-name "site-lisp/package" user-emacs-directory)))
  (when (and (file-directory-p package-el-site-lisp-dir)
	     (> emacs-major-version 23))
    (message "Removing local package.el from load-path to avoid shadowing bundled version")
    (setq load-path (remove package-el-site-lisp-dir load-path))))

(require 'package)

;; 设定package源
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gun" . "http://elpa.gnu.org/packages/")))

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

;; 设定gpg
(defun sanityinc/package-maybe-enable-signatures ()
  (setq package-check-signature (when (executable-find "gpg") 'allow-unsigned)))

(sanityinc/package-maybe-enable-signatures)
(after-load 'init-exec-path
	    (sanityinc/package-maybe-enable-signatures))

;; 请求第三方包，下载并安装
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally reqquiring MIN-VERSION.
if NO-REFRESH is non-nil, the available package lists will not b re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

(defun maybe-require-package (package &optional min-version no-refresh)
  "Try to install PACKAGE, and return non-nil if successful.
In the event of failure, return nil and print a warning message.
Optionally require MIN-VERSION. if NO-REFRESH is non-nil, the available package lists will not be re-downloaded in order to locate PACKAGE."
  (condition-case err
      (require-package package min-version no-refresh)
    (error
     (message "Couldn't install package '%s': %S" package err)
     nil)))

(setq package-enable-startup nil)
(package-initialize)

;; 全屏
(require-package 'fullframe)
(fullframe list-packages quit-window)

;; 记载cl-lib
(require-package 'cl-lib)
(require 'cl-lib)

(defun sanityinc/set-tabulated-list-column-width (col-name width)
  "Set any column with name COL-NAME to the given WIDTH."
  (cl-loop for column across tabulated-list-format
	   when (string= col-name (car column))
	   do (setf (elt column 1) width)))

(defun sanityinc/maybe-widen-package-menu-columns ()
  "Widen some columns of the package menu table to avoid truncation."
  (when (boundp 'tabulated-list-format)
    (sanityinc/set-tabulated-list-column-width "Version" 13)
    (let ((longest-archive-name (apply 'max (mapcar 'length (mapcar 'car package-archives)))))
      (sanityinc/set-tabulated-list-column-width "Archive" longest-archive-name))))

;; 加载包名菜单
(add-hook 'package-menu-mode-hook 'sanityinc/maybe-widen-package-menu-columns)

(provide 'init-elpa)
