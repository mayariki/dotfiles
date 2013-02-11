;;;; This elisp is to configure for Standard elisps.


;;;; for text-mode
(add-hook 'text-mode-hook
	  (lambda ()
	    ;; Split too long line, automatically
	    (auto-fill-mode 1)))


;;;; load the custom(a.k.a. local only) congirurations.
(condition-case err
    (load "config/builtins/local")
  (error))

