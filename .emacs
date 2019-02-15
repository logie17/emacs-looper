(message "The DOTDOTDOT_ORDER is %s\n"(getenv "DOTDOTDOT_ORDER"))
(setq dirs (split-string (getenv "DOTDOTDOT_ORDER")))
(while dirs
  (setq currentemacfile (concat (car dirs) "/.emacs"))
  (unless (string-match "emacs-looper" currentemacfile)
    (if (file-exists-p currentemacfile)
        (load currentemacfile)
        (message "Loading .emac file for %s\n" currentemacfile)
  ))
  (setq dirs (cdr dirs)))

