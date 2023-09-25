;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name ""
      user-mail-address "")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
(setq doom-font (font-spec :family "Source Code Pro" :size 15))
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(add-to-list 'custom-theme-load-path "~/.doom.d/themes/")
(load-theme 'nowhere t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/mnt/TrueNAS/org")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Setup custom splashscreen
(setq fancy-splash-image "~/Pictures/fog_forest_emacs.png")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
                                        ;(require 'org-mime)
;; (require 'centaur-tabs)
;; (centaur-tabs-mode t)
;; (setq centaur-tabs-set-bar 'under
;;       centaur-tabs-style "wave"
;;       centaur-tabs-set-icons t
;;       centaur-tabs-gray-out-icons 'buffer
;;       centaur-tabs-height 30
;;       centaur-tabs-set-modified-marker t
;;       centaur-tabs-style "bar"
;;       centaur-tabs-modified-marker "•")
;; (global-set-key (kbd "C-,")  'centaur-tabs-backward)
;; (global-set-key (kbd "C-'")  'centaur-tabs-forward)

;; Evil-escape sequence
(setq-default evil-escape-key-sequence "kj")
(setq-default evil-escape-delay 0.2)

;; set specific browser to open links
(setq browse-url-browser-function 'browse-url-firefox)

;; Emmet remap
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(map! :map emmet-mode-keymap
      :n "<C-return>" #'emmet-expand-line)
(setq emmet-expand-jsx-className? t) ;; default nil
;;---------
(use-package org
  :ensure nil
  :custom (org-modules '(org-habit)))
;;---------
(after! org
  (map! :map org-mode-map
        :n "<M-left>" #'org-do-promote
        :n "<M-right>" #'org-do-demote)
  )

;; Show habits in agenda
(setq org-habit-show-all-today t)
(setq org-habit-graph-column 1)
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (visual-line-mode -1)
            (setq truncate-lines 1)))

(use-package org-fancy-priorities
  :ensure t
  :hook
  (org-mode . org-fancy-priorities-mode)
  :config
  (setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕")))

;; Tailwindcss
(use-package! lsp-tailwindcss)

;;(after! org-fancy-priorities
;;  (setq org-fancy-priorities-list '("
;;⚡
;;" "
;;⬆
;;" "
;;⬇
;;" "
;;☕
;;")))


;; Line wrap
(global-visual-line-mode t)

;; use TabNine
(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)
;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

;; Setup Minimap
(require 'sublimity)
(require 'sublimity-scroll)
(require 'sublimity-map) ;; experimental
(require 'sublimity-attractive)

;; Treemacs
(require 'treemacs-all-the-icons)
(setq doom-themes-treemacs-theme "all-the-icons")
;;(treemacs-load-theme "all-the-icons")

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(75 . 95))
(add-to-list 'default-frame-alist '(alpha . (75 . 95)))

;; Dimmer setup
(require 'dimmer)
(dimmer-configure-which-key)
(dimmer-configure-helm)
(setq dimmer-fraction 0.30)
(dimmer-mode t)

;; Beacon setup
(beacon-mode 1)

;; Aggresssive Indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;; Blink cursor
(blink-cursor-mode 1)

;; Minimap settings
(setq minimap-window-location 'right)
(map! :leader
      (:prefix ("t" . "toggle")
       :desc "Toggle minimap-mode" "m" #'minimap-mode))

;; For flutter development
(require 'dart-mode)
(defun auto-reload ()
  (shell-command "kill -s SIGUSR1 $(cat /tmp/flutter.pid) && echo 'reload flutter...'"))

(add-hook 'dart-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'auto-reload nil 'make-it-local)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq package-selected-packages
      '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
                  ;; Optional packages
                  lsp-ui company hover))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(add-hook 'dart-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))

;; Org-auto-tangle
(use-package org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config
  (setq org-auto-tangle-default t))

;; Trying to get pomodoro timer working
(require 'org)
(setq org-clock-sound "~/Downloads/Gong.wav")

;; zoom in/out like we do everywhere else.
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Evil movement
(global-set-key (kbd "C-k") 'evil-window-up)
(global-set-key (kbd "C-j") 'evil-window-down)
(global-set-key (kbd "C-h") 'evil-window-left)
(global-set-key (kbd "C-l") 'evil-window-right)

;; Spelling hopefully fixed
(setq ispell-program-name "aspell")
(setq ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))
(setq spell-fu-directory "~/+STORE/dictionary") ;; Please create this directory manually.
(setq ispell-personal-dictionary "~/+STORE/dictionary/.pws")

;;Snippets
(yas-global-mode 1)
(add-hook 'yas-minor-mode-hook (lambda () (yas-activate-extra-mode 'fundamental-mode)))

;; Org Agenda
;; Set days viewed to 3, set start day to today, create seperator, and Dashboard view
(setq org-agenda-remove-tags t)
(setq org-agenda-block-separator 32)
(setq org-agenda-custom-commands
      '(("d" "Dashboard"
         (
          (tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "\n HIGHEST PRIORITY")
                 (org-agenda-prefix-format "   %i %?-2 t%s")
                 )
                )
          (agenda ""
                  (
                   (org-agenda-start-day "+0d")
                   (org-agenda-span 1)
                   (org-agenda-time)
                   (org-agenda-remove-tags t)
                   (org-agenda-todo-keyword-format "")
                   (org-agenda-scheduled-leaders '("" ""))
                   (org-agenda-current-time-string "ᐊ┈┈┈┈┈┈┈┈┈ NOW")
                   (org-agenda-overriding-header "\n TODAY'S SCHEDULE")
                   (org-agenda-prefix-format "   %i %?-2 t%s")
                   )
                  )
          (tags-todo  "-habit"
                      (
                       (org-agenda-overriding-header "\n ALL TODO")
                       (org-agenda-sorting-strategy '(priority-down))
                       (org-agenda-remove-tags t)
                       (org-agenda-prefix-format "   %i %?-2 t%s")
                       )
                      )))))

;; Remove Scheduled tag?
(setq org-agenda-scheduled-leaders '("" ""))

;; Refile Targets
(setq org-refile-targets '(("/mnt/TrueNAS/org/Done.org" . (:level . 1))))

;; Org-Roam
(setq org-roam-directory "/mnt/TrueNAS/org/roam")

(use-package! websocket
  :after org-roam)

(use-package! org-roam-ui
  :after org-roam ;; or :after org
  ;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
  ;;         a hookable mode anymore, you're advised to pick something yourself
  ;;         if you don't care about startup time, use
  ;;  :hook (after-init . org-roam-ui-mode)
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

;; org-download customizations
(require 'org-download)
(setq-default org-download-screenshot-method "scrot -s %s")

;; Nov.el customizations and setup
(setq nov-unzip-program (executable-find "bsdtar")
      nov-unzip-args '("-xC" directory "-f" filename))
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))



;; EMMS
(emms-all)
(emms-default-players)
(emms-mode-line-mode 1)
(emms-playing-time-mode 1)
(setq emms-source-file-default-directory "/mnt/TrueNAS/media/Music"
      emms-browser-covers #'emms-browser-cache-thumbnail-async
      emms-browser-thumbnail-small-size 64
      emms-browser-thumbnail-medium-size 128
      emms-playlist-buffer-name "*Music*"
      emms-info-asynchronously t
      emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)
(map! :leader
      (:prefix ("a" . "EMMS audio player")
       :desc "Play at directory tree"   "d" #'emms-play-directory-tree
       :desc "Go to emms playlist"      "a" #'emms-playlist-mode-go
       :desc "Shuffle"                  "h" #'emms-shuffle
       :desc "Emms pause track"         "x" #'emms-pause
       :desc "Emms stop track"          "s" #'emms-stop
       :desc "Emms play previous track" "p" #'emms-previous
       :desc "Emms play next track"     "n" #'emms-next))

;; Grab album artwork for dunst to display
(defun emms-cover-art-path ()
  "Return the path of the cover art for the current track."
  (let* ((track (emms-playlist-current-selected-track))
         (path (emms-track-get track 'name))
         (dir (file-name-directory path))
         (cover-files (directory-files dir nil ".*\\(jpg\\|png\\|jpeg\\)$")))
    (when cover-files
      (concat dir (car cover-files)))))

;; Read aloud for proofreading
(load-file "~/.doom.d/read-aloud.el")
(setq read-aloud-engine "flite")

;; MU4E
(use-package mu4e
  :ensure nil
  :defer 20
  :config

  (load-file "~/.config/mu4e/mu4e-config.el")
  (setq mu4e-update-interval (* 10 60))
  (mu4e t))

;; Deft mode
(setq deft-extensions '("txt" "tex" "org"))
(setq deft-directory "/mnt/TrueNAS/org/roam")
(setq deft-recursive t)
(setq deft-use-filename-as-title t)

;; Elfeed
;; Setup elfeed goodies for powerline effect
(require 'elfeed-goodies)
(elfeed-goodies/setup)
(after! elfeed
  (setq elfeed-search-filter "@1-week-ago +unread"))

;; Setup of elfeed tube
(use-package elfeed-tube
  :ensure t ;; or :straight t
  :after elfeed
  :demand t
  :config
  ;; (setq elfeed-tube-auto-save-p nil) ; default value
  ;; (setq elfeed-tube-auto-fetch-p t)  ; default value
  (elfeed-tube-setup)

  :bind (:map elfeed-show-mode-map
         ("F" . elfeed-tube-fetch)
         ([remap save-buffer] . elfeed-tube-save)
         :map elfeed-search-mode-map
         ("F" . elfeed-tube-fetch)
         ([remap save-buffer] . elfeed-tube-save)))

;;ChatGPT integration
;; (use-package! chatgpt
;;   :defer t
;;   :config
;;   (unless (boundp 'python-interpreter)
;;     (defvaralias 'python-interpreter 'python-shell-interpreter))
;;   (setq chatgpt-repo-path (expand-file-name "straight/repos/ChatGPT.el/" doom-local-dir))
;;   (set-popup-rule! (regexp-quote "*ChatGPT*")
;;     :side 'bottom :size .5 :ttl nil :quit t :modeline nil)
;;   :bind ("C-c q" . chatgpt-query))

;; Custom keymaps
(map! :leader
      ;; Magit mode mappngs
      (:prefix("g" . "magit")
       :desc "Stage all files"                  "A" #'magit-stage-modified
       :desc "PUSH"                             "P" #'magit-push
       :desc "PULL"                             "p" #'magit-pull
       :desc "Merge"                            "m" #'magit-merge
       )
      ;; Org mode mappings
      (:prefix("y" . "org-mode-specifics")
       :desc "MU4E org mode"                    "m" #'mu4e-org-mode
       :desc "Mail add attachment"              "a" #'mail-add-attachment
       :desc "Export as markdown"               "e" #'org-md-export-as-markdown
       :desc "Export as html"                   "h" #'org-html-export-as-html
       :desc "Org Roam UI"                      "u" #'org-roam-ui-mode
       :desc "Search dictionary at word"        "d" #'dictionary-lookup-definition
       :desc "Powerthesaurus lookup word"       "t" #'powerthesaurus-lookup-word-at-point
       :desc "Read Aloud This"                  "r" #'read-aloud-this
       :desc "Export as LaTeX then PDF"         "l" #'org-latex-export-to-pdf
       )
      ;; Mappings for Elfeed and ERC
      (:prefix("e" . "Elfeed and ERC")
       :desc "Open elfeed"              "e" #'elfeed
       :desc "Open ERC"                 "r" #'erc
       :desc "Update elfeed"            "u" #'elfeed-update
       :desc "MPV watch video"          "v" #'elfeed-tube-mpv
       :desc "Open Elpher"              "l" #'elpher
       )
      ;; Various other commands
      (:prefix("o" . "open")
       :desc "Calendar"                  "c" #'=calendar
       :desc "Bookmarks"                 "l" #'list-bookmarks
       ))


;; ;; /path/to/project/.dir-locals.el
;; ((sql-mode . ((sql-postgres-login-params
;;                '((user :default "postgres")
;;                  (database :default "postgres")
;;                  (server :default "localhost")
;;                  (port :default 54322))))))
