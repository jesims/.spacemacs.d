(defconst jesi-packages
	 '(jesi))

(defun jesi/init-jesi ()
	(spacemacs/toggle-indent-guide-globally-on)
	(setq dotspacemacs-line-numbers 'relative)
        (setq require-final-newline t)
)
