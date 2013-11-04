;;; tools.el --- some tool func

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


;;这个由王垠创作 
;;如果你正在编辑一个东西（在位置A），突然想到别的某处（位置B）要修改或查看或别的，
;;总之你要过去看看，你可以用C-.来在当前位置做个标记，然后去你想去的地方B，
;;看了一会你觉的我可以回A去了，用C-,就回到刚才做标记的地方A，再用C-,又会回到B 
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

;c-x e 快速打开 .emacs 
(defun open-init-file()
 (interactive)
 (find-file "~/.emacs")
)

;; 将重复的数字递增
;;exp
;;foo1
;;foo1      ;;foo1
;;foo1	->  ;;foo2
;;foo1      ;;foo3
(defun inc-num-region (p m)
  "Increments the numbers in a given region"
  (interactive "r")
  (save-restriction
    (save-excursion
      (narrow-to-region p m)    
      (goto-char (point-min))   
      (forward-line)
      (let ((counter 1))
        (while (not (eq (point)
                        (point-max)))
          (goto-char (point-at-eol))
          (search-backward-regexp "[0-9]+" (point-at-bol) t)
          (let* ((this-num (string-to-number (match-string 0)))
                 (new-num-str (number-to-string (+ this-num
                                                   counter))))
            (replace-match new-num-str)
            (incf counter)
            (forward-line)))))))


(provide 'tools)
;;; tools.el ends here
