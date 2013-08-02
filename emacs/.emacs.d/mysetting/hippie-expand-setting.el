;;; hippie-expand-setting.el --- 

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

;; hippie-expand

;;; Code:
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

(define-key c-mode-base-map [(tab)] 'my-indent-or-complete)

;;==============================end  my-indent-or-complete ============================


(provide 'hippie-expand-setting)
;;; hippie-expand-setting.el ends here
