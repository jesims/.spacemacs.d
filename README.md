# .spacemacs.d

## Installation
1. [Install Spacemacs](https://github.com/syl20bnr/spacemacs/tree/develop#prerequisites)
1. Launch Spacemacs and follow the step wizard then close it
1. Clone this project into `~/.spacemacs.d/`
1. `mv ~/.spacemacs ~/.spacemacs.d/init.el` to move the initial config
1. Update the `~/.spacemacs.d/init.el` to include the following sections

```lisp
(defun load-config (&rest files)
  (mapc (lambda (file)
          (let ((path (concat "~/.spacemacs.d/" file)))
	    (when (file-readable-p path)
	      (load path))))))

(defun dotspacemacs/layers ()
  ...
  (load-config "jesi/layers.el" "user/layers.el"))

(defun dotspacemacs/init ()
  ...
  (load-config "jesi/init.el" "user/init.el"))

(defun dotspacemacs/user-init ()
  ...
  (load-config "jesi/user-init.el" "user/user-init.el"))

(defun dotspacemacs/user-config ()
  ...
  (load-config "jesi/user-config.el" "user/user-config.el"))

```


