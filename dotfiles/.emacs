;; Gui customizations
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode -1)
(global-display-line-numbers-mode t)
(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Open Emacs window maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; Centaur tabs
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-h") 'centaur-tabs-backward)
(global-set-key (kbd "C-l") 'centaur-tabs-forward)
(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-set-close-button nil)

;;Minimap
(setq minimap-window-location 'right)

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
   '("fedc226f1255518a7a2f81d963cf0c2fabd8d52ad85df7d467548ec6b091be82" "9e37845dcbae52cc7327847f62b815ff537c41dd4f23abd95f19902f40b27e3a" default))
 '(ispell-dictionary nil)
 '(package-selected-packages '(minimap centaur-tabs smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
