;;; complimentary-theme.el --- complimentary
;;; Version: 1.0
;;; Commentary:
;;; A theme called complimentary
;;; Code:

(deftheme complimentary "complimentary color scheme -- custom colorscheme I made")
  (custom-theme-set-faces 'complimentary
   '(default ((t (:foreground "#ffffff" :background "#111111" ))))
   '(cursor ((t (:background "#a9a9a9" ))))
   '(fringe ((t (:background "#111111" ))))
   '(mode-line ((t (:foreground "#000000" :background "#aeaeae" ))))
   '(region ((t (:background "#504945" ))))
   '(secondary-selection ((t (:background "#3e3834" ))))
   '(font-lock-builtin-face ((t (:foreground "#f9a158" ))))
   '(font-lock-comment-face ((t (:foreground "#c1c1c1" ))))
   '(font-lock-function-name-face ((t (:foreground "#35c9ff" ))))
   '(font-lock-keyword-face ((t (:foreground "#ff9a6d" ))))
   '(font-lock-string-face ((t (:foreground "#90c56b" ))))
   '(font-lock-type-face ((t (:foreground "#f6f778" ))))
   '(font-lock-constant-face ((t (:foreground "#ffffff" ))))
   '(font-lock-variable-name-face ((t (:foreground "#ffffff" ))))
   '(minibuffer-prompt ((t (:foreground "#d4d4d4" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'complimentary)

;;; complimentary-theme.el ends here
