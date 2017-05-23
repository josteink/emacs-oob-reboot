(define-key global-map [remap isearch-forward] 'isearch-forward-regexp)
(define-key global-map [remap isearch-backward] 'isearch-backward-regexp)

(setq-default
 isearch-allow-scroll t                 ; Allow scrolling in an isearch session
 lazy-highlight-cleanup nil             ; Leave highlights after an isearch session
 lazy-highlight-initial-delay 0)        ; Start highlighting immediately
