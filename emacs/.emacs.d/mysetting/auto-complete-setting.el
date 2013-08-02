;;; auto-complete-setting.el --- auto complete setting

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

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
(require 'auto-complete-config)
(require 'auto-complete)
(ac-config-default)

 (add-hook 'c-mode-common-hook '(lambda ()
          ;; ac-omni-completion-sources is made buffer local so
          ;; you need to add it to a mode hook to activate on 
          ;; whatever buffer you want to use it with.  This
          ;; example uses C mode (as you probably surmised).
          ;; auto-complete.el expects ac-omni-completion-sources to be
          ;; a list of cons cells where each cell's car is a regex
          ;; that describes the syntactical bits you want AutoComplete
          ;; to be aware of. The cdr of each cell is the source that will
          ;; supply the completion data.  The following tells autocomplete
          ;; to begin completion when you type in a . or a ->
          (add-to-list 'ac-omni-completion-sources
                       (cons "\\." '(ac-source-semantic)))
          (add-to-list 'ac-omni-completion-sources
                       (cons "->" '(ac-source-semantic)))
		  ;;ac-sources
          (setq ac-sources '(ac-source-semantic
                             ac-source-yasnippet
			     ac-source-imenu
			     ac-source-symbols
			     ac-source-filename
			     ac-source-gtags
			     ac-source-abbrev
			     ac-source-functions
			     ac-source-variables
			     ac-source-semantic-raw
			     ac-source-files-in-current-dir
			     ac-source-features
			     ;; ac-source-available-p
			     ;; ac-source-eclim
			     ;; ac-source-rcodetools
			     ;; ac-source-entity
			     ac-source-words-in-buffer
			     ;;ac-source-words-in-all-buffer
			     ac-source-yasnippet
			     )
				)
  ))
(setq ac-auto-show-menu 0.8)
 ;(define-key ac-complete-mode-map "<return>"   'nil)
  ;(define-key ac-complete-mode-map "RET"        'nil)
;;  (define-key ac-complete-mode-map "M-j"        'ac-complete)
;;  (define-key ac-complete-mode-map "<return>" 'ac-complete)
  ;(define-key ac-complete-mode-map "/C-n"        'ac-next)
;  (define-key ac-complete-mode-map "/C-p"        'ac-previous)
;;============================== end of auto-complete ==============================

(provide 'auto-complete-setting)
;;; auto-complete-setting.el ends here
