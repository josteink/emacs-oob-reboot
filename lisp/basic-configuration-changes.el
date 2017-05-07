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
