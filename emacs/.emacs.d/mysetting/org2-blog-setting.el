;;; org2-blog-setting.el --- 

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

;; ;;============================== begin org2-bog/wordpress ==============================
;;==                             modified 20130317                                    ==
(add-to-list 'load-path "~/.emacs.d/site-lisp/org2blog")
(require 'org2blog-autoloads)

;;set the net agent
;;(setq url-proxy-services '(("http" . "127.0.0.1:8087")))
(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://username.wordpress.com/xmlrpc.php"
         :username "username"
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)
        ("cpper"
         :url "http://cpper.org/xmlrpc.php"
		 :username ""
		 :password ""
		 :keep-new-lines t
         :confirm t
         :wp-code nil
         :tags-as-categories nil
         )))
(setq org2blog/wp-track-posts nil)


;;; Code:



(provide 'org2-blog-setting)
;;; org2-blog-setting.el ends here
