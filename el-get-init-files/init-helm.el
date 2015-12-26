(require 'helm-config)

(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)

(add-hook 'helm-minibuffer-set-up-hook (lambda ()
					 (interactive)
					 (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
					 (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)))
