(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)


(setq-default line-spacing 0.12)

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(global-set-key (kbd "C-=") 'text-scale-increase) ;; Ctrl +/-
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
