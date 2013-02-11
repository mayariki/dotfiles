;;;; for el-get settings
;;;;

;; auto install if el-get is not installed.
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (event-pring-last-sexp)))

;; Set the directory which is placed recipes.
(add-to-list 'el-get-recipe-path
	     (concat (file-name-directory load-file-name) "el-get/recipes"))

;; Set the directory which is placed custom(a.k.a. local configuration) recipes.
(add-to-list 'el-get-recipe-path
	     ("~/.emacs.d/config/el-get/local-recipes"))


;;;; auto completion
;;;;
(el-get 'sync '(auto-completion))
(add-hook 'auto-complete-mode-hook
	  (lambda ()
	    (define-key ac-completing-map (kbd "C-n") 'ac-next)
	    (define-key ac-completing-map (kbd "C-p") 'ac-previous)))

;;;; Migemo
;;;;
(require 'migemo nil t)


;;;; load ....local FIXME write rightly!!
(condition-case error
    (load "config/packages/local")
  (error))
