;; -*- lexical-binding: t -*-

(defun eval-when-frame-is-created (f)
  (funcall f)
  (add-hook 'after-make-frame-functions
	    '(lambda (frame)
	       (with-selected-frame frame
		 (funcall f)))))

;; C-h to Backspace
(eval-when-frame-is-created (lambda () (keyboard-translate ?\C-h ?\C-?)))

;;; erase evil bars
(menu-bar-mode -1)
(if (window-system)
    (eval-when-frame-is-created
     (lambda ()
       (tool-bar-mode -1)
       (toggle-scroll-bar -1))))

;; font color
(add-to-list 'default-frame-alist '(cursor-color . "gray"))
(add-to-list 'default-frame-alist '(foreground-color . "gray"))
(add-to-list 'default-frame-alist '(background-color . "black"))
