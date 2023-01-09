(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode -1)
(global-hl-line-mode t)
(kill-buffer "*Messages*")
(global-disable-mouse-mode) ;; Install from Melpa
(fset 'yes-or-no-p 'y-or-no-p)
(set-face-background 'hl-line "#1c1c1c")
(set-frame-font "Aurulent Sans Mono" nil t)
(global-set-key "\C-m" 'newline-and-indent)

(setq cursor-type 'bar)
(setq-default tab-width 4)
(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq initial-scratch-message "Happy hacking!")
(setq-default message-log-max nil)
(setq confirm-nonexistant-file-or-buffer nil)

;; Open Emacs maximized
(defun fullscreen (&optional f)
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
             '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
             '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

(fullscreen)
  
;; Disable prompt for killing buffer
(setq kill-buffer-query-functions
	  (remq 'process-kill-buffer-query-function
			kill-buffer-query-functions))
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Install smx from Melpa
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; Ido's already built in to emacs
(require 'ido)
(ido-mode t)

;; Tree sitter for better syntax highlighting
;; Install the required packages from Melpa
(require 'tree-sitter)
(require 'tree-sitter-langs)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; Install highlight-numbers from Melpa
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(complimentary))
 '(custom-safe-themes
   '("5a04c3d580e08f5fc8b3ead2ed66e2f0e5d93643542eec414f0836b971806ba9" "05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" "fedc226f1255518a7a2f81d963cf0c2fabd8d52ad85df7d467548ec6b091be82" "9e37845dcbae52cc7327847f62b815ff537c41dd4f23abd95f19902f40b27e3a" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(highlight-numbers tree-sitter-langs tree-sitter dracula-theme idea-darkula-theme company minimap centaur-tabs smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
