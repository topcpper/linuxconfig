;;; ecb-setting.el --- ecb setting

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
(ecb-layout-function-left8)
;;ECB
;;;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
;;============================== end ECB ====================================

(provide 'ecb-setting)
;;; ecb-setting.el ends here
