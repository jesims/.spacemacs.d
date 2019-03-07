(configuration-layer/declare-layers '(
                                      (auto-completion :variables
                                                       auto-completion-enable-help-tooltip t
                                                       auto-completion-enable-snippets-in-popup t
                                                       auto-completion-enable-sort-by-usage t
                                                       )
                                      (clojure :variables
                                               clojure-enable-clj-refactor t
                                               )
                                      (git :variables
                                           git-magit-status-fullscreen t
                                           git-enable-github-support t
                                           git-gutter-use-fringe t
                                           )
                                      better-defaults
                                      helm
                                      emacs-lisp
                                      markdown
                                      osx
                                      spell-checking
                                      syntax-checking
                                      version-control
                                      ))
