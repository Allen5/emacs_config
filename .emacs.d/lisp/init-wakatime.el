
;;加载wakatime mode
(load "~/.emacs.d/elpa/mode/wakatime-mode.el")

;;设定wakatime api key
(custom-set-variables
 '(wakatime-api-key "4620f6c4-3daa-460c-9108-8bd05e0af559")
 '(wakatime-cli-path "/usr/local/bin/wakatime"))

;;全局开启wakatime-mode
(global-wakatime-mode 1)
