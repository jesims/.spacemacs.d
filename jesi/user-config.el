(spacemacs/toggle-indent-guide-globally-on)

(setq-default
  cider-default-cljs-repl 'shadow
  cider-known-endpoints '(("LOCAL " "localhost" "7002"))
  cider-save-file-on-load t
  cider-shadow-default-options "jesi"
  sql-postgres-login-params '((user :default "jesi")
                              (database :default "jesi")
                              (server :default "localhost")
                              (port :default 5433)))
