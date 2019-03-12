(spacemacs/toggle-indent-guide-globally-on)
(use-package parinfer
  :ensure t
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
            pretty-parens  ; different paren styles for different modes.
            evil           ; If you use Evil.
            paredit        ; Introduce some paredit commands.
            smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
    (add-hook 'common-lisp-mode-hook #'parinfer-mode)
    (add-hook 'scheme-mode-hook #'parinfer-mode)
    (add-hook 'lisp-mode-hook #'parinfer-mode)))


(setq 
  eclim-eclipse-dirs '("/Applications/Eclipse Java.app/Contents/Eclipse")
  eclimd-executable "/Applications/Eclipse Java.app/Contents/Eclipse/eclimd"
  eclim-executable "/Applications/Eclipse Java.app/Contents/Eclipse/plugins/org.eclim_2.8.0/bin/eclim"
  eclimd-default-workspace "~/eclipse-workspace"
  eclimd-wait-for-process t)
