
(defvar gui-mode-hook nil
  "Hook for when Emacs is executed with a GUI/Windowing system.")

;; define default GUI hooks here.

;; (add-hook 'gui-mode-hook (lambda ()
;;                            (show-paren-mode 1)))

;; actual hook-activation

(defun gui-mode-initialize ()
  (when (display-graphic-p)
    (run-hooks 'gui-mode-hook)))

(with-eval-after-load "init"
  (gui-mode-initialize))
