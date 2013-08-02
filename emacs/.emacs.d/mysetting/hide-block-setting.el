;;; hide-block-setting.el --- 

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

;;hide-block
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
;; (global-set-key (kbd "C-c ,-") 'hs-toggle-hiding )
;; (global-set-key (kbd "C-_") 'hs-hide-block)
;; (global-set-key (kbd "C-+") 'hs-show-block)


(provide 'hide-block-setting)
;;; hide-block-setting.el ends here
