
;; 定制python开发环境

(require-package 'elpy)
(require 'elpy)

;; 切记.该模式生效的前提需要安装:
;; pip install rope, jedi, flake8, importmagic autopep8 yapf

;; 开启elpy模式
(elpy-enable)

(provide 'init-python-mode)
