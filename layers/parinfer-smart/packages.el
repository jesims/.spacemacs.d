(setq parinfer-smart-packages
 '(
   (parinfer-smart :location local)))

(defun parinfer-smart/init-parinfer-smart ()
  (use-package parinfer-smart
    :defer t
    :diminish parinfer-mode
    :init
    (progn
      (setq parinfer-extensions '(defaults evil)))))
