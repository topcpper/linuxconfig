;; .emacs
;;重新加载.emacs M-x load-file ~/.emacs  

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)


;;时间戳设置(time-stamp)，设定文档上次保存的信息
;;只要里在你得文档里有Time-stamp:的设置，就会自动保存时间戳
;;启用time-stamp
(setq time-stamp-active t)
;;去掉time-stamp的警告？
(setq time-stamp-warn-inactive t)
;;设置time-stamp的格式，我如下的格式所得的一个例子：
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
;;将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)
;;时间显示设置
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)
;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)
;;时间的变化频率，单位多少来着？
(setq display-time-interval 10)

;;启用部分补全功能，如输入M-x q r r相当于M-x query-replace-regexp
(partial-completion-mode 1)
;;在minibuffer里启用自动补全函数和变量
(icomplete-mode 1)
;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母
(fset 'yes-or-no-p 'y-or-n-p)
;;允许minibuffer自由变化其大小（指宽度）
(setq resize-mini-windows t)
;;当寻找一个同名的文件，自动关联上那个文件？
(setq uniquify-buffer-name-style 'forward)
;;在emacs读man文档时，使用当前buffer
(setq Man-notify-method 'pushy)
;;鼠标自动避开指针，如当你输入的时候，指针到了鼠标的位置，鼠标有点挡住视线了
(mouse-avoidance-mode 'animate)
;;允许自动打开图片，如wiki里面
(auto-image-file-mode)
;;可以操作压缩文档
(auto-compression-mode 1)
;;在minibuffer上面可以显示列号
(column-number-mode t)
;;显示默认的文档的宽度，看起来比较舒服？
(setq default-fill-column 6)
;;指针不要闪，我得眼睛花了
(blink-cursor-mode -1)
(transient-mark-mode 1)
;;当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)
;;是用滚轴鼠标
(mouse-wheel-mode t)
;;去掉烦人的警告铃声
(setq visible-bell nil)
;;滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1
scroll-margin 3
scroll-conservatively 10000)
;;设定句子结尾，主要是针对中文设置
(setq sentence-end "\\([&#161;&#163;&#163;&#161;&#163;&#191;]\\|&#161;&#161;\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;去掉Emacs和gnus启动时的引导界面
(setq inhibit-startup-message t)
;;(setq gnus-inhibit-startup-message t)
;;当指针移到另一行，不要新增这一行？d
(setq next-line-add-newlines nil)
;;在文档最后自动插入空白一行，好像某些系统配置文件是需要这样的
(setq require-final-newline t)
(setq track-eol t)
;;使用C-k删掉指针到改行末的所有东西
(setq-default kill-whole-line t)
;;设定删除保存记录为200，可以方便以后无限恢复
(setq kill-ring-max 200)
;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;这个由王垠创作 
;;如果你正在编辑一个东西（在位置A），突然想到别的某处（位置B）要修改或查看或别的，总之你要过去看看，你可以用C-.来在当前位置做个标记，然后去你想去的地方B，看了一会你觉的我可以回A去了，用C-,就回到刚才做标记的地方A，再用C-,又会回到B 

(defun ska-point-to-register() 
"Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position." 
(interactive) 
(setq zmacs-region-stays t) 
(point-to-register 8)) 
(defun ska-jump-to-register() 
"Switches between current cursorposition and position 
that was stored with ska-point-to-register." 
(interactive) 
(setq zmacs-region-stays t) 
(let ((tmp (point-marker))) 
(jump-to-register 8) 
(set-register 8 tmp))) 
(global-set-key [(control ?.)] 'ska-point-to-register) 
(global-set-key [(control ?\,)] 'ska-jump-to-register)

(add-to-list 'load-path "~/.emacs.d/site-lisp")
(require 'linum)                                                   
(global-linum-mode 1)

(setq column-number-mode t) 


;;时间戳
(setq time-stamp-active t)
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:u %02m/%02d/%04y %02H:%02M:%02S")

;;工具条太大
(tool-bar-mode -1)

;detdet
;;把c语言风格设置为k&r风格 
(add-hook 'c-mode-hook 
   '(lambda () 
    (c-set-style "stroustrup"))) 
	
;;set c++ style as stroustrup style 
(add-hook 'c++-mode-hook 
   '(lambda() 
   (c-set-style "stroustrup")))

;;cc-mode 配置
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)



;; offset customizations not in my-c-style
;;(setq c-offsets-alist '((member-init-intro . ++)))
;; Customizations for all modes in CC Mode.

(defun my-c-mode-common-hook ()
  ;; add my personal style and set it for the current buffer
  ;; (c-add-style "PERSONAL" my-c-style t)
  ;; other customizations
  (setq tab-width 4  indent-tabs-mode nil)
  ;; we like auto-newline and hungry-delete 
 (c-toggle-auto-hungry-state 1)
  ;; key bindings for all supported languages.  We can put these in
  ;; c-mode-base-map because c-mode-map, c++-mode-map, objc-mode-map,
  ;; java-mode-map, idl-mode-map, and pike-mode-map inherit from it.
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
 ;; the hot key <return > conflict with auto-complete-base-map ac-complete
;;  (define-key c-mode-base-map [(return)] 'newline-and-indent )
  (define-key c-mode-base-map [(f7)] 'complie)
;;  (define-key c-mode-base-map [(meta \`) 'c-indent-command])
;;预处理设置 这里不是太懂
  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
) 
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)

;;============================== end my-c-mode-common-hook ================================


(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;c-x e 快速打开 .emacs 
(defun open-init-file()
 (interactive)
 (find-file "~/.emacs")
)
;;============================== end of open-init-file ==============================


;;global-hot-key
(global-set-key "\C-xe" 'open-init-file)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)

;ibuffer instead of buffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;防止输入发截获c-@ ,改为 C-c m 
(global-set-key "\C-cm" 'set-mark-command)

;; 跳转到全局定义
;;(global-set-key "\C-xg" 'cscope-find-global-definition-no-prompting)


(add-to-list 'load-path "~/.emacs.d/mysetting")
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





;; ediff config setting
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(ediff-split-window-function (quote split-window-vertically)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-current-diff-A ((((class color)) (:background "yellow" :foreground "blue"))))
 '(ediff-current-diff-B ((((class color)) (:background "yellow" :foreground "black" :weight bold)))))
