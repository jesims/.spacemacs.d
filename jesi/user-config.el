(spacemacs/toggle-indent-guide-globally-on)

(add-hook 'clojure-mode-hook #'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
(add-hook 'common-lisp-mode-hook #'parinfer-mode)
(add-hook 'scheme-mode-hook #'parinfer-mode)
(add-hook 'lisp-mode-hook #'parinfer-mode)

(setq-default
 cider-default-cljs-repl 'shadow
 cider-known-endpoints '(("LOCAL " "localhost" "7002"))
 cider-save-file-on-load t
 cider-shadow-default-options "jesi"
 parinfer-extensions '(defaults evil smart-yank)
 sql-postgres-login-params '((user :default "jesi")
                             (database :default "jesi")
                             (server :default "localhost")
                             (port :default 5433)))
