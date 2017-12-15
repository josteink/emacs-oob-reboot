;; Assorted configurations that deal with core Emacs functionality
(autoload 'ibuffer "ibuffer")

(fset 'yes-or-no-p 'y-or-n-p)

(setq
 auto-save-default nil
 backup-inhibited t
 confirm-nonexistent-file-or-buffer nil
 create-lockfiles nil
 mouse-wheel-progressive-speed nil)

(define-key global-map [remap list-buffers] 'ibuffer)

;; Allow 20MB of memory (instead of 0.76MB default) before calling
;; garbage collection. This means GC runs less often, which speeds
;; up some operations
(setq gc-cons-threshold 20000000)

;; Typed text will replace a highlighted region
(delete-selection-mode 1)

;; By default, backspace on Emacs turns a tab character into a set of spaces
;; & deletes one. This sets backspace to delete 1 character instead of 1 column.
(global-set-key (kbd "DEL") 'backward-delete-char)

;; Enable `downcase-region' and `upcase-region'
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Enhanced M-x with ivy
(when (not (package-installed-p 'ivy))
  (package-initialize)
  (package-install 'ivy))
(require 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-c M-x") 'execute-extended-command) ;; the old M-x
