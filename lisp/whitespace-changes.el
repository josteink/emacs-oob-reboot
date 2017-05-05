;; Modifications related to whitespace management

;; Disable tab indentation
(setq-default indent-tabs-mode nil)

;; Remove trailing whitespace before save.
(add-hook 'before-save-hook 'delete-trailing-whitespace)
