(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")


;; key bindings
(global-set-key (kbd "C-.") 'next-buffer)
(global-set-key (kbd "C-,") 'previous-buffer)
(global-set-key [M-tab] 'other-window)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; turn warning bell off
(setq ring-bell-function 'ignore)

;; show R function hints in minibuffer; still can't get this to work
(require 'ess-eldoc)

;; show full path to file; not sure why this doesn't seem to work
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; make and bind funtion to flip forward through kill ring
(defun yank-pop-forwards (arg)
      (interactive "p")
      (yank-pop (- arg)))

(global-set-key "\M-Y" 'yank-pop-forwards) ; M-Y (Meta-Shift-Y)





(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'meta)
;  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(package-selected-packages
   (quote
    (stan-snippets stan-mode auto-complete auto-complete-auctex auto-complete-c-headers auto-dictionary company polymode undo-tree snakemake-mode ess ess-smart-underscore latex-math-preview latex-preview-pane auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-math-face ((t (:foreground "firebrick1"))))
 '(font-latex-script-char-face ((t (:foreground "plum1"))))
 '(font-lock-keyword-face ((t (:foreground "lime green"))))
 '(font-lock-string-face ((t (:foreground "SkyBlue1"))))
 '(font-lock-type-face ((t (:foreground "DodgerBlue1")))))



;; set default Tex engine
(setq-default TeX-engine 'xetex)


(put 'scroll-left 'disabled nil)
(global-linum-mode t)
(latex-preview-pane-enable)
(load-theme 'deeper-blue)
;(setq line-move-visual t)
(setq-default word-wrap t)
