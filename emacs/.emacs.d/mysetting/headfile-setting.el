;;; headfile-setting.el --- 

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


(provide 'headfile-setting)
;;; headfile-setting.el ends here
