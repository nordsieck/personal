(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(go-mode go-eldoc go-autocomplete web-mode))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; display
(global-hl-line-mode 1)
(set-face-background 'hl-line "brightblack")
(require 'windmove)
(windmove-default-keybindings 'meta)

;; go
(setq gofmt-command "goimports")

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(require 'auto-complete-config)
(require 'go-autocomplete)

(defun my-go-mode-hook ()
  (add-hook 'before-save-hook #'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; web
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
	ad-do-it)
        ad-do-it))

(load-theme 'manoj-dark)

(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
