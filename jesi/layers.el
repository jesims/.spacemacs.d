(setq-default 
  dotspacemacs-configuration-layers 
  (append dotspacemacs-configuration-layers 
    '(
      (auto-completion :variables
         auto-completion-enable-help-tooltip t
         auto-completion-enable-snippets-in-popup t
         auto-completion-enable-sort-by-usage t)
      (clojure :variables
         clojure-enable-clj-refactor t)
      (git :variables
         git-magit-status-fullscreen t
         git-enable-github-support t
         git-gutter-use-fringe t)
      java 
      better-defaults
      javascript
      markdown
      osx
      shell
      spell-checking
      syntax-checking
      version-control)))
