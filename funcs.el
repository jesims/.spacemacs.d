;;(when (configuration-layer/package-usedp 'jesi))

(defun spacemacs/jesi-init ()
        (spacemacs/toggle-indent-guide-globally-on)
        (setq-default
		dotspacemacs-line-numbers 'relative
        	require-final-newline t))
