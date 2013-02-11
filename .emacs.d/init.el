;;;; basic settings
;;;;

;; set load-path
(setq load-path (append
		 '("~/.emacs.d")
		 load-path))

;; remove menu bar
(menu-bar-mode -1)

;; remove tool bar
(menu-bar-mode -1)


;;;; for Text Editing
;;;;

;; Highlight correspondent paren.
(show-paren-mode 1)

;; Highlight text inside paren if correspondent paren was not window.
(setq show-paren-style 'mixed)

;; Display whitespace and line which is too long.
;; TODO I don't know this. Check this feature.
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face			; Using face to display
			 trailing
			 lines-tail
			 space-before-tab
			 space-after-tab))
(global-whitespace-mode 1)

;; Highlight current line, and it's color setting.
(global-hl-line-mode)
(set-face-background hl-line-face "LightGray")

;; Display column and line number.
(column-number-mode t)
(line-number-mode t)

;; Save the cursor position
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.emacs-places")

;; Insert one line at the EOF
(setq require-final-newline t)
(setq next-line-add-newlines nil)

;; Do not create backup file.
(setq backup-inhibited t)

;; Delete auto save file when emacs termination.
(setq delete-auto-save-files t)

;; Ignore character case when auto completion.
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; Using partial match completion.
;; TODO I don't know this. Check this feature.
;; FIXME wrong symbol name???
;(partial-completion-mode t)

;; Always display completion candidate list.
;; TODO I don't know this. Check this feature.
(icomplete-mode 1)

;; Set history length.
(setq history-length 10000)

;; Save minibuffer history.
(savehist-mode 1)

;; Set execute bit when shell script will be saved.
;; TODO I don't know this. will it work fine?
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)


;;;; for Directory mode settings
;;;;
(require 'dired-x)

;; Inline edit a File name using "r" in dired-mode.
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)


;;;; for Buffer settings
;;;;
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)


;;;; for Japanese environment settings
;;;;
(set-locale-environment nil)
(set-language-environment 'Japanese)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
