(elpaca haskell-mode
    (use-package haskell-mode))

  ;; (elpaca python-mode
  ;; (use-package python-mode))  

    (elpaca lua-mode
    (use-package lua-mode))
  
;; Upgrade flymake from ELPA
(elpaca flymake
  (use-package flymake))

(elpaca flycheck ;; IF IT DOESN@T WORK RUN META-X FLYCHECK_MODE
(use-package flycheck
     :ensure t
     ;; :defer t
     :config
     (global-flycheck-mode 1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled idle-change))
    (setq flycheck-idle-change-delay 0.5)
    (setq flycheck-python-pylint-executable "pylint"))
       )
(add-hook 'buffer-list-update-hook
          (lambda ()
            (when (and (buffer-file-name)
                       (not (bound-and-true-p flycheck-mode)))
              (flycheck-mode 1))))

;; Completion UI
  ;; (elpaca corfu
  ;;   (use-package corfu
  ;;     :init (global-corfu-mode)))

  ;; ;; Additional completion at point extensions
  ;; (elpaca cape
  ;;   (use-package cape
  ;;     :init
  ;;     (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  ;;     (add-to-list 'completion-at-point-functions #'cape-file)
      ;; (add-to-list 'completion-at-point-functions #'cape-keyword)))

  ;; Minibuffer completion
;;   (elpaca vertico
;;     (use-package vertico
;;       :init (vertico-mode)))

;;   (elpaca orderless
;;     (use-package orderless
;;       :init (setq completion-styles '(orderless basic))))

;;   (elpaca marginalia
;;     (use-package marginalia
;;       :init (marginalia-mode)))

;;   (elpaca consult
;;     (use-package consult))

;;   ;; Python language server
;;   (elpaca eglot
;;     (use-package eglot
;;       :hook (python-mode . eglot-ensure)))

;; ;;  Optional: Syntax highligh
;; ting and virtualenv management
;;   (elpaca python-mode
;;     (use-package python-mode
;;       :mode "\\.py\\'"
;;       :interpreter "python"))

;;     (require 'python)
;;   (setq python-shell-interpreter "python3")  ;; or "python" depending on your system
;; (setq python-shell-interpreter-args "-i")
;; (setq flycheck-python-pylint-executable "pylint")  ;; Make sure it points to your pylint

;; (elpaca jedi
  ;; (use-package jedi
;;     :config
;; (
;;  setq jedi:environment-root "~/.emacs.d/.jedi")
;; (
 ;; setq jedi:environment-virtualenv
 ;;      (list "python3" "-m" "venv"))
 ;;  (add-hook 'python-mode-hook 'jedi:setup)
 ;;  (setq jedi:complete-on-dot t)
 ;;  )
 ;;  )

(elpaca company
  (use-package company
    :defer 2
    :diminish
    :custom
    (company-begin-commands '(self-insert-command))
    (company-idle-delay .1)
    (company-minimum-prefix-length 2)
    (company-show-numbers t)
    (com
     pany-tooltip-align-annotations 't)
    (global-company-mode t))
   )
  
;; (elpaca company-box
 ;; (use-package company-box
 ;;   :after company
 ;;   :diminish
 ;;   :hook (company-mode . company-box-mode))
 ;; )
