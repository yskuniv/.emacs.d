
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;;; el-get

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")

(el-get 'sync)

;; (setq dired-bind-jump nil)		; for ddskk
(el-get-bundle helm)
(el-get-bundle auto-complete)
;; (el-get-bundle ddskk)
(el-get-bundle paredit)
(el-get-bundle magit)


;;; key bindings

(keyboard-translate ?\C-h ?\C-?)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-0") 'delete-window)


;;; etc

(setq inhibit-startup-message t)

(menu-bar-mode -1)
(tool-bar-mode -1)

(show-paren-mode t)
(global-linum-mode t)
(global-hl-line-mode t)
