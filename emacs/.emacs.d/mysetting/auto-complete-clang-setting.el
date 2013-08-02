;;; auto-complete-clang-setting.el --- 

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
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-clang")

(require 'auto-complete)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete-1.3.1/dict")
(require 'auto-complete-config)
(ac-config-default)

(require 'auto-complete-clang)
    
;; (setq ac-auto-start nil)
;; (setq ac-quick-help-delay 0.5)
;; ;; (ac-set-trigger-key "TAB")
;; ;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
;; (defun my-ac-config ()
;;   (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
;;   (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;;   ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;   (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;;   (add-hook 'css-mode-hook 'ac-css-mode-setup)
;;   (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;;   (global-auto-complete-mode t))
;; (defun my-ac-cc-mode-setup ()
;;   (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
;; (add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ;; ac-source-gtags
;; (my-ac-config)

;; (setq ac-clang-flags
;;       (mapcar (lambda (item)(concat "-I" item))
;;               (split-string
;;                "
;; /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7
;; /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/i686-redhat-linux
;; /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/backward
;; /usr/local/include
;; /usr/lib/gcc/i686-redhat-linux/4.4.7/include
;; /usr/include
;; "
;;                )))


;; 开启 auto-complete-clang  
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-clang")

(require 'auto-complete-clang)    
;;(setq ac-clang-auto-save t)    
;; 设置不自动启动  
(setq ac-auto-start nil)    
;; 设置响应时间 0.5  
(setq ac-quick-help-delay 0.5)    
;;(ac-set-trigger-key "TAB")    
;;(define-key ac-mode-map  [(control tab)] 'auto-complete)    
;; 提示快捷键为 M-/  
(define-key ac-mode-map  (kbd "M-/") 'auto-complete)   
(defun my-ac-config ()    
  (setq ac-clang-flags    
        (mapcar(lambda (item)(concat "-I" item))    
               (split-string    
                "  
 /usr/include/c++/4.4.7  
 /usr/include/c++/4.4.7/i686-redhat-linux/  
 /usr/include/c++/4.4.7/backward  
 /usr/lib/gcc/i686-redhat-linux/4.4.7/include/
 /usr/local/include
 /usr/lib/gcc/i686-redhat-linux/4.4.7/include-fixed
 /usr/include
"  
)))    
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))    
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)    
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)    
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)    
  (add-hook 'css-mode-hook 'ac-css-mode-setup)    
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)    
  (global-auto-complete-mode t))    
(defun my-ac-cc-mode-setup ()    
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))    
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)    
;; ac-source-gtags    
(my-ac-config)    
(ac-config-default)  
;; 结束  


(provide 'auto-complete-clang-setting)
;;; auto-complete-clang-setting.el ends here
