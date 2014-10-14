;;; face-font-setting.el --- 

;; Copyright (C) 2013  cpper

;; Author: cpper <cpper@cpper.hust.lab>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")


;;工具条太大
(tool-bar-mode -1)

;;时间戳设置(time-stamp)，设定文档上次保存的信息
;;启用time-stamp
(setq time-stamp-active t)
;;去掉time-stamp的警告
(setq time-stamp-warn-inactive t)
;;设置time-stamp的格式
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
;;将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)

;;时间显示设置
;;启用时间显示设置，在minibuffer上面
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


;背景颜色
;; (set-background-color "gray")

;; (require 'color-theme)
;; (color-theme-initialize)
;; (require 'color-theme-cpper)
;(color-theme-gnome2)


;;set default font
;;(set-face-attribute 'default nil :font "Monaco 10")
(set-default-font "Monaco-11")


;; ediff config setting
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-merge-split-window-function (quote split-window-horizontally))
 '(ediff-split-window-function (quote split-window-horizontally)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-current-diff-A ((((class color)) (:background "yellow" :foreground "blue"))))
 '(ediff-current-diff-B ((((class color)) (:background "yellow" :foreground "black" :weight bold)))))


(provide 'face-font-setting)
;;; face-font-setting.el ends here
