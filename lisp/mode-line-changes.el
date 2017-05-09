(setq-default mode-line-format
              (append '(" " mode-line-modified)
                      (member 'mode-line-frame-identification mode-line-format)))
