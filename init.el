(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")

;; (el-get 'sync)

(el-get-bundle helm)
(el-get-bundle auto-complete)
(el-get-bundle ddskk)
(el-get-bundle paredit)
(el-get-bundle magit)

;; C-h
(keyboard-translate ?\C-h ?\C-?)

;; bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; kill gnu emacs buffer
(setq inhibit-startup-message t)

;; (load-theme 'monoj-dark t)

(show-paren-mode t)

;; load local/init.el
(let ((local-initel "~/.emacs.d/local/init.el"))
  (if (file-exists-p local-initel)
      (load-file local-initel)))
