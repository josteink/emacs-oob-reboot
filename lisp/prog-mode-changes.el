;; prog-mode should have auto-completion by default.
;;
;; to do this, we need to install company-mode.

(package-initialize)
(package-refresh-contents)
(package-install 'company)

(require 'prog-mode)
(add-hook 'prog-mode-hook (lambda ()
                            (company-mode 1)))
(add-hook 'prog-mode-hook (lambda ()
                            (linum-mode 1)))

(add-hook 'prog-mode-hook (lambda ()
                            (show-paren-mode 1)
                            (show-paren-style 'mixed)))
