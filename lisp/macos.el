;; -*- emacs-lisp -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My (jackrusher) preferred bindings for MacOS, as a reference.

;; The general philosophy of the movement and evaluation keys is that
;; adding more modifier keys causes the same action, but "bigger". So,
;; for example, M-left goes left by the word rather than the
;; character. s-return evaluates the immediately preceding form, but
;; S-s-return evaluates the currounding top level form. And so on.

;; use OS X's Spotlight for M-x locate
(setq locate-make-command-line (lambda (s) `("mdfind" "-name" ,s)))

;; alt-click for mouse-2, command-click for mouse-3
;; ...is this broken?
(setq mac-emulate-three-button-mouse t)

;; shift-select is standard in OS X inputs
(setq shift-select-mode t)

;;;; Normalize key bindings with Mac OS X system ones

;; command + up/down/left/right = file start/end, line start/end
(global-set-key (kbd "<s-up>")    'beginning-of-buffer)
(global-set-key (kbd "<s-down>")  'end-of-buffer)
(global-set-key (kbd "<s-left>")  'move-beginning-of-line)
(global-set-key (kbd "<s-right>") 'move-end-of-line)

(define-key global-map (kbd "s-+") 'text-scale-increase)
(define-key global-map (kbd "s--") 'text-scale-decrease)

;; TODO discuss default installation of undo-tree
;; undo-tree-mode aliased to command+z/shift+command+z
;; (require 'undo-tree)
;; (global-undo-tree-mode 1)
;; (global-set-key (kbd "s-z") 'undo)
;; (global-set-key (kbd "s-Z") 'undo-tree-redo)

;; the fantastic undo-tree-visualize on C-s-z
;;(global-set-key [C-s-268632090] 'undo-tree-visualize)

;; command-f, the default OSX search keybinding, but with regexp
(global-set-key (kbd "s-f") 'isearch-forward-regexp)

;; TODO discuss inclusion of visual-regexp
;; command-r, forward-replace
;; (require 'visual-regexp)
;; (global-set-key (kbd "s-r") 'vr/replace)
;; (global-set-key [8388690] 'vr/query-replace) ; s-R

;; make M-up and M-down the same as C-up and C-down because the former
;; is how it's bound in OSX
(global-set-key (kbd "<M-up>") 'backward-paragraph)
(global-set-key (kbd "<M-down>") 'forward-paragraph)

;; option-delete = backword-kill-word in OS X
(global-set-key (kbd "M-<backspace>") 'backward-kill-word)

;; I like a single frame, so I'd rather have this kill the buffer
(global-set-key (kbd "s-w") 'kill-this-buffer)

;; TODO ido-find-file or similar (helm, whatever)
;;(global-set-key (kbd "s-o") 'ido-find-file)

;; In dired, move deletions to trash
(setq delete-by-moving-to-trash t)

;; don't use the right alt/option key as M-, so it can still be used
;; to type accented characters. Fück yeah.
(setq ns-right-alternate-modifier nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; RAILWAY CAT EMACS

;; default railway has these the other way round
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)

;; ... and doesn't set these default CUA bindings
(global-set-key [(super a)] 'mark-whole-buffer)
(global-set-key [(super c)] 'kill-ring-save)
(global-set-key [(super g)] 'isearch-repeat-forward)
(global-set-key [(super l)] 'goto-line)
(global-set-key [(super q)] 'save-buffers-kill-terminal)
(global-set-key [(super s)] 'save-buffer)
(global-set-key [(super v)] 'yank)
(global-set-key [(super x)] 'kill-region)
(global-set-key [(super w)] (lambda ()
                              (interactive)
                              (kill-buffer (current-buffer))))
(global-set-key [(super z)] 'undo)

;; turn off super disturbing visible bell
(setq visible-bell nil)

;; does not work yet in railway cat :(
(setq mac-right-alternate-modifier nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PROG MODES

;; these are bound to "kill-this-buffer" by default
(global-set-key (kbd "s-K") nil)
(global-set-key (kbd "s-k") nil)
(add-hook 'prog-mode-hook
          (lambda ()
            ;; compile short cuts
            (define-key (current-local-map) (kbd "s-K") 'compile)
            (define-key (current-local-map) (kbd "s-k") 'recompile)))

;; TODO discuss paredit
;; (eval-after-load 'paredit
;;   '(progn
;;      ;; fights with my preferred navigation keys
;;      (dolist (binding (list (kbd "M-<up>") (kbd "M-<down>") (kbd "C-M-<left>") (kbd "C-M-<right>")))
;;        (define-key paredit-mode-map binding nil))

;;      ;; not just in lisp mode(s)
;;      (global-set-key (kbd "C-M-<left>") 'backward-sexp)
;;      (global-set-key (kbd "C-M-<right>") 'forward-sexp)

;;      (global-set-key (kbd "M-(") 'paredit-wrap-round)
;;      (global-set-key (kbd "M-[") 'paredit-wrap-square)
;;      (global-set-key (kbd "M-{") 'paredit-wrap-curly)

;;      (global-set-key (kbd "M-)") 'paredit-close-round-and-newline)
;;      (global-set-key (kbd "M-]") 'paredit-close-square-and-newline)
;;      (global-set-key (kbd "M-}") 'paredit-close-curly-and-newline)

;; 	 (diminish 'paredit-mode)))

;; Evaluate code, larger scope with more modifiers. I bind these over
;; all prog modes to do the right thing in any language with a REPL.

;; just the last sexp:
(define-key emacs-lisp-mode-map (kbd "<s-return>") 'eval-last-sexp)

;; ... add shift to eval last defun (i.e. top level form)
(define-key emacs-lisp-mode-map (kbd "<S-s-return>") 'eval-defun)

;; ... add meta to eval entire buffer
(define-key emacs-lisp-mode-map (kbd "<M-S-s-return>") 'eval-last-psexp)
