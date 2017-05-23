(require 'dired)

;; Move cursor to beginning of filename when that makes sense
(setq wdired-use-dired-vertical-movement 'sometimes)

;; Default is isearch -everything-, but usually you want to find a file.
(define-key dired-mode-map (kbd "C-s") #'dired-isearch-filenames)
