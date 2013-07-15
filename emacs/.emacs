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
    (c-set-style "k&r"))) 
	
;;set c++ style as stroustrup style 
(add-hook 'c++-mode-hook 
   '(lambda() 
   (c-set-style "stroustrup")))

;;cc-mode 配置
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;;自动补全 () ' " [] {} 
;; (defun my-c-mode-auto-pair ()
;;   (interactive)
;;   (make-local-variable 'skeleton-pair-alist)
;;   (setq skeleton-pair-alist  '(
;;     (?` ?` _ "''")
;;     (?\( ?  _ " )")
;;     (?\[ ?  _ " ]")
;;     (?{ \n > _ \n ?} >)))
;;   (setq skeleton-pair t)
;;   (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
;;   (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
;; (add-hook 'c-mode-hook 'my-c-mode-auto-pair)
;;============================== end auto-pair ==============================
;;代码缩进配置
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40
      44 48 52 56 60 64 68 72 76 80 84 88 92 96)) 

(defconst my-c-style
  '((c-tab-always-indent        . t)
    (c-comment-only-line-offset . 4)
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (case-label        . 4)
                                   (block-open        . 0)
                                   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t)
    )  "My C Programming Style"
)
;;============================== end my-c-style ============================================= 

;; offset customizations not in my-c-style
;;(setq c-offsets-alist '((member-init-intro . ++)))
;; Customizations for all modes in CC Mode.

(defun my-c-mode-common-hook ()
  ;; add my personal style and set it for the current buffer
  (c-add-style "PERSONAL" my-c-style t)
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
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
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

;背景颜色
(set-background-color "gray")

;(set-foreground-color "gray")


;(require 'color-theme)
;(color-theme-gnome2)


;hide the code block 
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'prel-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-modehook 'hs-minor-mode)
;; M-x hs-minor-mode
;; C-c @ ESC C-s show all
;; C-c @ ESC C-h hide all
;; C-c @ C-s  show block
;; C-c @ C-h hide block
;;C-c @ C-c toggle hide block
;;============================== end hide code block  ================================


;; 安装 abbrev
(mapc
 (lambda (mode)
   (define-abbrev-table mode '(
                               ("inc" "" skeleton-include 1)
                               )))
 '(c-mode-abbrev-table c++-mode-abbrev-table))
;; 输入 inc , 可以自动提示输入文件名称,可以自动补全.
;; 输入 inc , 可以自动提示输入文件名称,可以自动补全.
(define-skeleton skeleton-include
  "generate include<>" ""
  > "#include <"
  (completing-read "Include File:"
                   (mapcar #'(lambda (f) (list f ))
                           (apply 'append
                                  (mapcar
                                   #'(lambda (dir)
                                       (directory-files dir))
                                   (list "/usr/include"
                                         "/usr/local/include"
                                         "/usr/include/c++/4.4.4")))))
  ">")
;;============================== end skeleton-include ==============================

;;自动添加 _ 并且打开文件头文件
(defvar wcy-c/c++-hightligh-included-files-key-map nil)
(if wcy-c/c++-hightligh-included-files-key-map
    nil
  (setq wcy-c/c++-hightligh-included-files-key-map (make-sparse-keymap))
  (define-key wcy-c/c++-hightligh-included-files-key-map (kbd "<RET>") 'find-file-at-point))

(defun wcy-c/c++-hightligh-included-files ()
  (interactive)
  (when (or (eq major-mode 'c-mode)
            (eq major-mode 'c++-mode))
    (save-excursion
      (goto-char (point-min))
      ;; remove all overlay first
      (mapc (lambda (ov) (if (overlay-get ov 'wcy-c/c++-hightligh-included-files)
                             (delete-overlay ov)))
            (overlays-in (point-min) (point-max)))
      (while (re-search-forward "^#include[ \t]+[\"<]\\(.*\\)[\">]" nil t nil)
        (let* ((begin  (match-beginning 1))
               (end (match-end 1))
               (ov (make-overlay begin end)))
          (overlay-put ov 'wcy-c/c++-hightligh-included-files t)
          (overlay-put ov 'keymap wcy-c/c++-hightligh-included-files-key-map)
          (overlay-put ov 'face 'underline))))))
;; 这不是一个好办法，也可以把它加载到 c-mode-hook or c++-mode-hook 中。
(setq wcy-c/c++-hightligh-included-files-timer (run-with-idle-timer 4 t 'wcy-c/c++-hightligh-included-files))
;;============================== end hightligh-included-files ==============================


;; 20120812 cedet  
 ;; Load CEDET   
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0pre7/common/")
;; (load-file "~/.emacs.d/site-lisp/cedet-1.0pre7/common/cedet.el")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet/common/")
(load-file "~/.emacs.d/site-lisp/cedet/common/cedet.el")
(require 'cedet)

;; (add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
;;      (semantic-load-enable-code-helpers)
;;      (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
;;      (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
;;      (define-key-after (lookup-key global-map [menu-bar tools])
;;                 [speedbar]
;;                 '("Speedbar" .
;;                 speedbar-frame-mode)
;;                 [calendar])
;; (global-set-key  [f10] 'speedbar) ; open and close speedbar

(global-ede-mode 1)      ; Enable the Project management system
 
;; uncomment out one of the following 3 lines for more or less semantic features
;; (semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers) 

;; (semantic-load-enable-excessive-code-helpers) 
;;(semantic-load-enable-semantic-debugging-helpers)  
 
;;enable folding mode to collapse a definition into a single line
(global-semantic-tag-folding-mode)

;;(global-semantic-idle-tag-highlight-mode 1)
;; SRecode minor mode.
(global-srecode-minor-mode 1)
 
;;设置自动补全
;;C/C++语言启动时自动加载semantic对/usr/include的索引数据库
(setq semanticdb-search-system-databases t)
  (add-hook 'c-mode-common-hook
          (lambda ()
            (setq semanticdb-project-system-databases
                  (list (semanticdb-create-database
                           semanticdb-new-database-class
                             "/usr/include")))))

;; project root path
 (setq semanticdb-project-roots
           (list
         (expand-file-name "/")))
;; ;; 避免semantic占用CPU过多
;; (setq-default semantic-idle-scheduler-idle-time 432000)

(setq semanticdb-default-save-directory
      (expand-file-name "~/.emacs.d/semanticdb"))

(require 'semantic-ia)
(require 'semantic-gcc)

;;add header files path 
(setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public"))
(defconst cedet-win32-include-dirs
  (list "C:/MinGW/include"
        "C:/MinGW/include/c++/3.4.5"
        "C:/MinGW/include/c++/3.4.5/mingw32"
        "C:/MinGW/include/c++/3.4.5/backward"
        "C:/MinGW/lib/gcc/mingw32/3.4.5/include"
        "C:/Program Files/Microsoft Visual Studio/VC98/MFC/Include"))
(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

(semantic-add-system-include "/usr/include/c++/4.4.4" 'c++-mode)
(semantic-add-system-include "/usr/include/c++/4.4.4" 'c++-mode)
(semantic-add-system-include "/usr/include" 'c++-mode)
(semantic-add-system-include "/usr/lib/gcc/i686-redhat-linux/4.4.6/include" 'c++-mode)
(semantic-add-system-include "/usr/local/include" 'c++-mode)
(semantic-add-system-include "/usr/lib/gcc/i686-redhat-linux/4.4.6/../../../../include/c++/4.4.6/backward" 'c++-mode)
(semantic-add-system-include "/usr/lib/gcc/i686-redhat-linux/4.4.6/../../../../include/c++/4.4.6/i686-redhat-linux" 'c++-mode)
(semantic-add-system-include "/usr/lib/gcc/i686-redhat-linux/4.4.6/../../../../include/c++/4.4.6" 'c++-mode)

(setq-mode-local cpp-mode semanticdb-find-default-throttle 
                      '(project local unloaded system recursive)) 
;; gnu global support
;; (require 'semanticdb-global)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode)
 
;; ctags
;;(require 'semanticdb-ectag)
;;(semantic-load-enable-primary-exuberent-ctags-support)
 
;; customisation of modes
(defun my-cedet-hook ()
 (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
 (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
 ;;
 (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
 (local-set-key "\C-c=" 'semantic-decoration-include-visit)
 
 (local-set-key "\C-cj" 'semantic-ia-fast-jump)
 (local-set-key "\C-cb" 'semantic-mrub-switch-tags)
 (local-set-key "\C-cq" 'semantic-ia-show-doc)
 (local-set-key "\C-cs" 'semantic-ia-show-summary)
 (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
 (local-set-key "\C-cr" 'semantic-symref)
  ;; for senator
 (local-set-key "\C-c\-" 'senator-fold-tag)
 (local-set-key "\C-c\+" 'senator-unfold-tag)
 )
 
;;(add-hook 'semantic-init-hooks 'my-cedet-hook)
(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'lisp-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)
;; (add-hook 'erlang-mode-hook 'my-cedet-hook)
(add-hook 'c++-mode-common-hook 'my-cedet-hook)

 
;; (defun my-c-mode-cedet-hook ()
;;  (local-set-key "." 'semantic-complete-self-insert)
;;  (local-set-key ">" 'semantic-complete-self-insert)
;; ;; (local-set-key "\C-ct" 'eassist-switch-h-cpp)
;; ;; (local-set-key "\C-xt" 'eassist-switch-h-cpp)
;;  ;;(local-set-key "\C-ce" 'eassist-list-methods)
;; )
 
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
;; (add-hook 'c++-mode-common-hook 'my-c-mode-cedet-hook)


;;============================== end cedef ========================================

;; hippie complete,优先调用 senator 的分析结果
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相同，
;;只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后多按几下
;; M-/ 就能得到那一行。

(autoload 'senator-try-expand-semantic "senator")
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
          '(
               try-expand-line
			   try-expand-line-all-buffers
                senator-try-expand-semantic
                try-expand-dabbrev
                try-expand-dabbrev-visible
                try-expand-dabbrev-all-buffers
                try-expand-dabbrev-from-kill
                try-expand-list
                try-expand-list-all-buffers
				try-complete-file-name-partially
				try-complete-file-name
				try-complete-lisp-symbol
				try-complete-lisp-symbol-partially
				try-expand-whole-kill
        )
)
;;============================== end hippie-expand======================================
;; 如果在单词中间就补齐，否则就tab
(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
          (hippie-expand  nil)
          (indent-for-tab-command)
   )
)
;;==============================end  my-indent-or-complete ============================

;; ECB
;ECB
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-2.40")
;(load-file "~/.emacs.d/site-lisp/ecb-2.40/ecb.el")
(require 'ecb)
;;自动启动 ECB
;;;; 自动启动ecb，并且不显示每日提示
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil)


;;ECB layout
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left8")
 '(ecb-layout-window-sizes (quote (("left8" (0.23870967741935484 . 0.2857142857142857) (0.23870967741935484 . 0.23809523809523808) (0.23870967741935484 . 0.30158730158730157) (0.23870967741935484 . 0.15873015873015872)) ("my-cscope-layout" (0.16774193548387098 . 0.3968253968253968) (0.16774193548387098 . 0.2857142857142857)))))
 '(ecb-options-version "2.40"))
  '(ecb-layout-name "left8")
;;(ecb-layout-function-left8)

;;============================== end ECB ====================================

;;highlight-symbol
(require 'highlight-symbol)
;;============================== end highlight-symbol ==============================


;; auto-complete
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
(require 'auto-complete-config)
(require 'auto-complete)
(ac-config-default)

 (add-hook 'c-mode-common-hook '(lambda ()
          ;; ac-omni-completion-sources is made buffer local so
          ;; you need to add it to a mode hook to activate on 
          ;; whatever buffer you want to use it with.  This
          ;; example uses C mode (as you probably surmised).
          ;; auto-complete.el expects ac-omni-completion-sources to be
          ;; a list of cons cells where each cell's car is a regex
          ;; that describes the syntactical bits you want AutoComplete
          ;; to be aware of. The cdr of each cell is the source that will
          ;; supply the completion data.  The following tells autocomplete
          ;; to begin completion when you type in a . or a ->
          (add-to-list 'ac-omni-completion-sources
                       (cons "\\." '(ac-source-semantic)))
          (add-to-list 'ac-omni-completion-sources
                       (cons "->" '(ac-source-semantic)))
		  ;;ac-sources
          (setq ac-sources '(ac-source-semantic
                             ac-source-yasnippet
							 ac-source-imenu
							 ac-source-symbols
							 ac-source-filename
							 ac-source-gtags
							 ac-source-abbrev
							 ac-source-functions
							 ac-source-variables
							 ac-source-semantic-raw
							 ac-source-files-in-current-dir
							 ac-source-features
;							 ac-source-available-p
;							 ac-source-eclim
;							 ac-source-rcodetools
;							 ac-source-entity
							 ac-source-words-in-buffer
;							 ac-source-words-in-all-buffer
							 ac-source-yasnippet
							 )
				)
  ))
(setq ac-auto-show-menu 0.8)
 ;(define-key ac-complete-mode-map "<return>"   'nil)
  ;(define-key ac-complete-mode-map "RET"        'nil)
;;  (define-key ac-complete-mode-map "M-j"        'ac-complete)
;;  (define-key ac-complete-mode-map "<return>" 'ac-complete)
  ;(define-key ac-complete-mode-map "/C-n"        'ac-next)
;  (define-key ac-complete-mode-map "/C-p"        'ac-previous)
;;============================== end of auto-complete ==============================

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

;;hide-block
;; (global-set-key (kbd "C-c ,-") 'hs-toggle-hiding )
;; (global-set-key (kbd "C-_") 'hs-hide-block)
;; (global-set-key (kbd "C-+") 'hs-show-block)


;;ECB
;;;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

;;highlight-symbol
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)
;;============================== end global hot key ========================================

 (add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-query nil)
(eval-after-load 'autoinsert
  '(define-auto-insert
     '("\\.\\(CC?\\|cc\\|cxx\\|cpp\\|c++\\)\\'" . "C++ skeleton")
     '("Short description: "
       "/*************************************************************" \n
	   "*"\n
       "*"(file-name-nondirectory (buffer-file-name))
       ": " str \n
	   "*auther     : caowg" \n
	   "*Written on : " (format-time-string "%D.") \n
	   "*"\n
       "*************************************************************/" > \n \n
       "#include <iostream>" \n \n
       "using namespace std;" \n \n
       "int main(int arg ,char *arv[])" \n
       "{" \n
       > _ \n
       "}" > \n)))

;;============================== emacs xsel ================================
;; 支持emacs和外部程序的粘贴
;;(setq x-select-enable-clipboard t)
;; use xsel to copy/paste in emacs-nox
(unless window-system
 (when (getenv "DISPLAY")
  (defun xsel-cut-function (text &optional push)
    (with-temp-buffer
      (insert text)
      (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
  (defun xsel-paste-function()
    (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
      (unless (string= (car kill-ring) xsel-output)
        xsel-output )))
  (setq interprogram-cut-function 'xsel-cut-function)
  (setq interprogram-paste-function 'xsel-paste-function)
 ));; 支持emacs和外部程序的粘贴
;;============================== end xsel ================================


;;set default font
;;(set-face-attribute 'default nil :font "Monaco 10")
(set-default-font "Monaco-11")


;;org-mode
( add-to-list 'load-path "~/.emacs.d/site-lisp/org-7.8.03/lisp")
(require 'org-install)
(require 'org-publish)


;;============================== begin org2-bog/wordpress ==============================
;;==                             modified 20130317                                    ==
(add-to-list 'load-path "~/.emacs.d/site-lisp/org2blog")
(require 'org2blog-autoloads)

;;set the net agent
;;(setq url-proxy-services '(("http" . "127.0.0.1:8087")))
(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://username.wordpress.com/xmlrpc.php"
         :username "username"
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)
        ("cpper"
         :url "http://cpper.org/xmlrpc.php"
		 :username ""
		 :password ""
		 :keep-new-lines t
         :confirm t
         :wp-code nil
         :tags-as-categories nil
         )))
(setq org2blog/wp-track-posts nil)


;;========================================== yasnippet =======================;;
(add-to-list 'load-path
              "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
