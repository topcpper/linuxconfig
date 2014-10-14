;;; cedet.el --- the cedet config file

;; Copyright (C) 2013  cpper

;; Author: cpper <cpper@cpper.hust.lab>
;; Keywords: abbrev

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
      (expand-file-name "~/semanticdb"))

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


(provide 'cedet-setting)
;;; cedet.el ends here
