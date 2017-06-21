;; prog-mode should have auto-completion by default.
;;
;; to do this, we need to install company-mode.

(package-initialize)
(package-refresh-contents)
(package-install 'company)

(require 'prog-mode)
(add-hook 'prog-mode-hook (lambda ()
                            (company-mode 1)))
