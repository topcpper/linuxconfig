;; .emacs
;;重新加载.emacs M-x load-file ~/.emacs  

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)


;; 加载路径
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/mysetting")


;; 显示行号
(require 'linum)                                                   
(global-linum-mode 1)
(setq column-number-mode t) 



(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)



(require 'c-cpp-config)
(require 'tools)
(require 'cedet-setting)
(require 'face-font-setting)
(require 'auto-insert-setting)
(require 'headfile-setting)
(require 'hippie-expand-setting)
(require 'hilight-symbol-setting)
(require 'yasnippet-setting)
(require 'auto-complete-setting)
;;(require 'auto-complete-clang-setting)
(require 'hide-block-setting)
(require 'xsel-setting)
(require 'python-mode-setting)


;;global-hot-key
(global-set-key "\C-xe" 'open-init-file)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)

;ibuffer instead of buffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;防止输入发截获c-@ ,改为 C-c m 
(global-set-key "\C-cm" 'set-mark-command)

