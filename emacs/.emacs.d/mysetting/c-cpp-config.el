;;; c_cpp.el --- the c_cpp config file

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


;;自动插入匹配的括号
;;C/C++  mode
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
    (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)    
  (backward-char))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)

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


(provide 'c-cpp-config)
;;; c_cpp.el ends here
