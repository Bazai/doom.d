;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq doom-font (font-spec :family "Fira Code" :size 15))

(when IS-MAC
  (setq ns-use-thin-smoothing t)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  (add-hook 'window-setup-hook #'toggle-frame-fullscreen))

(map!
 ;; Easier window navigation
 :n "C-h"   #'evil-window-left
 :n "C-j"   #'evil-window-down
 :n "C-k"   #'evil-window-up
 :n "C-l"   #'evil-window-right

 ;; Comment code
 :n "M-/" #'evil-commentary-line

 (:leader
   (:prefix "/"
     :desc "Search current buffer"  :n  "/" #'swiper-helm)
   (:prefix "w"
     :desc "Close current pane"  :n  "d" #'+workspace/close-window-or-workspace)
   (:prefix "s"
     ;; Better swiper search in current buffer
     :desc "Search current buffer"  :n  "s" #'swiper-helm)))
