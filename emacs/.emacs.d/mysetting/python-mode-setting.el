;;; python-mode-setting.el --- my python mode

;; Copyright (C) 2014  cpper

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


;; 跳转到全局定义
;;(global-set-key "\C-xg" 'cscope-find-global-definition-no-prompting)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-merge-split-window-function (quote split-window-horizontally))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(python-continuation-offset 4)
 '(python-indent 4))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-current-diff-A ((((class color)) (:background "yellow" :foreground "blue"))))
 '(ediff-current-diff-B ((((class color)) (:background "yellow" :foreground "black" :weight bold)))))


(defun my-python-mode-hook()
    (local-set-key  (kbd "C-c C-k") 'kill-region)
    (local-set-key  (kbd "C-c C-p") 'python-mark-block)
)
(add-hook 'python-mode-hook 'my-python-mode-hook)



(provide 'python-mode-setting)
;;; python-mode-setting.el ends here
