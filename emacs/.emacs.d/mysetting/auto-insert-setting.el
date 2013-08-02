;;; auto-insert-setting.el --- 

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


;;=================================== auto-insert ===================================
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-query nil)
(eval-after-load 'autoinsert
  '(define-auto-insert
     '("\\.\\(CC?\\|cc\\|cxx\\|cpp\\|c++\\)\\'" . "C++ skeleton")
     '("Short description: "
       "/*************************************************************" \n
	   "*"\n
       "*"(file-name-nondirectory (buffer-file-name))
       ": " str \n
	   "*auther     : caowg" \n
	   "*Written on : " (format-time-string "%D.") \n
	   "*"\n
       "*************************************************************/" > \n \n
       "#include <iostream>" \n \n
       "using namespace std;" \n \n
       "int main(int arg ,char *arv[])" \n
       "{" \n
       > _ \n
       "}" > \n)))
;;=================================== end auto insert ===================================


(provide 'auto-insert-setting)
;;; auto-insert-setting.el ends here
