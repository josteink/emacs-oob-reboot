;; Assorted configurations that deal with core Emacs functionality

(fset 'yes-or-no-p 'y-or-n-p)

(setq
 auto-save-default nil
 backup-inhibited t
 confirm-nonexistent-file-or-buffer nil
 create-lockfiles nil
 mouse-wheel-progressive-speed nil)

;;Show matching pairs of brackets
(show-paren-mode t)
