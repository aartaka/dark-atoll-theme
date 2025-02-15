(deftheme dark-atoll)
(provide 'dark-atoll)
(provide-theme 'dark-atoll)


(let ((bg1 "#000000")
      (bg2 "#090000")

      (fg "#ffefd5")
      (fg2 "#fff8f8")

      (search "#cd5c5c")
      (search2 "#f08080")
      (highlight "#ffa408")

      (str    "#300000")
      (red    "#cd5c5c")
      (ok     "#6b8e23")
      (olive  "#556b2f"))
  (custom-theme-set-faces
   'dark-atoll

   `(default  ((t (:background ,bg1 :foreground ,fg))))
   `(shadow   ((t (:background ,bg2))))
   `(hl-line  ((t (:background ,bg2 :extend t))))

   `(region              ((t (:background ,search))))
   `(lazy-highlight      ((t (:foreground ,fg :background ,search2))))
   `(secondary-selection ((t (:foreground ,fg :background ,search2))))
   `(highlight           ((t (:foreground ,fg :background ,bg2 :bold t))))
   `(default             ((t (:foreground ,fg :background ,bg1))))
   `(fringe              ((t (:foreground ,fg :background ,bg1))))
   `(match               ((t (:foreground ,ok :bold t))))
   `(scroll-bar          ((t (:foreground ,fg2 :backgorund ,bg1))))

   `(link                ((t (:underline t))))
   `(link-visited        ((t (:underline t :italic t))))
   `(button              ((t (:underline t))))
   `(header-line         ((t (:bold t))))
   `(tooltip             ((t (:foreground ,fg  :background ,bg2))))
   `(vertical-border     ((t (:foreground ,bg2 :background ,bg2))))
   `(info-string         ((t (:foreground ,highlight))))
   `(default-italic      ((t (:slant italic))))

   `(error                       ((t (:foreground ,red))))
   `(warning                     ((t (:foreground ,red))))
   `(success                     ((t (:foreground ,ok))))
   `(cancel                      ((t (:foreground ,red :strike-through t))))

   `(minibuffer-noticable-prompt ((t (:foreground ,fg :bold t))))
   `(minibuffer-prompt           ((t (:foreground ,fg :bold t))))

   `(isearch                     ((t (:foreground ,fg :background ,search))))
   `(isearch-highlight           ((t (:foreground ,fg :background ,search2))))
   `(isearch-fail                ((t (:foreground ,fg :background ,search2))))

   `(paren-matched               ((t (:foreground ,ok  :background ,bg1))))
   `(paren-unmatched             ((t (:foreground ,red :background ,bg1))))
   `(escape-glyph                ((t (:foreground ,red :bold t))))
   `(homoglyph                   ((t (:foreground ,red :bold t))))

   `(line-number              ((t (:foreground ,fg2 :background ,bg1))))
   `(line-number-current-line ((t (:foreground ,fg  :background ,bg1))))
   `(linum                    ((t (:inherit 'line-number))))

   ;; syntax
   `(font-lock-builtin-face              ((t (:foreground ,highlight :italic t))))
   `(font-lock-comment-delimiter-face    ((t (:background ,str :italic t))))
   `(font-lock-comment-face              ((t (:background ,str :italic t))))
   `(font-lock-doc-face                  ((t (:background ,str :italic t))))
   `(font-lock-constant-face             ((t (:foreground ,fg :italic t))))
   `(font-lock-function-name-face        ((t (:foreground ,fg :bold t))))
   `(font-lock-keyword-face              ((t (:foreground ,highlight))))
   `(font-lock-type-face                 ((t (:foreground ,fg))))
   `(font-lock-variable-name-face        ((t (:foreground ,fg :bold t))))
   `(font-lock-negation-char-face        ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face         ((t (:foreground ,fg))))
   `(font-lock-preprocessor-char-face    ((t (:foreground ,fg))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,fg  :bold t))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,fg  :bold t))))
   `(font-lock-string-face               ((t (:foreground ,fg  :background ,str))))
   `(font-lock-warning-face              ((t (:foreground ,red))))

   ;; eshell
   `(eshell-ls-directory  ((t (:foreground ,highlight :bold t))))
   `(eshell-prompt        ((t (:foreground ,fg :bold t))))
   `(eshell-ls-executable ((t (:foreground ,fg :bold t))))
   `(eshell-ls-symlink    ((t (:foreground ,fg :italic t))))
   `(eshell-ls-special    ((t (:foreground ,ok :italic t))))
   `(eshell-ls-backup     ((t (:foreground ,fg :italic t))))
   `(eshell-ls-readonly   ((t (:foreground ,red))))
   `(eshell-ls-unreadable ((t (:foreground ,red))))
   `(eshell-ls-missing    ((t (:foreground ,red))))
   `(eshell-ls-product    ((t (:foreground ,fg))))
   `(eshell-ls-archive    ((t (:foreground ,fg))))
   `(eshell-ls-entries    ((t (:foreground ,fg))))

   ;; flyspell
   `(flyspell-incorrect       ((t (:underline (:style wave :color ,red) ))))
   `(flyspell-duplicate       ((t (:underline (:style wave :color ,search)))))
   `(flycheck-error           ((t (:underline (:style wave :color ,red)))))
   `(flysheck-warning         ((t (:underline (:style wave :color ,search)))))
   `(flysheck-warning-overlay ((t (:underline (:style wave :color ,search)))))
   `(flycheck-note            ((t (:underline (:style wave :color ,ok)))))

   ;; cider
   `(cider-fringe-good-face      ((t (:foreground ,ok))))
   ;; `(cider-test-success-face     ((t (:background ,ok :foreground  ,bg1))))
   ;; `(cider-test-failure-face     ((t (:background ,red :foreground ,bg1))))
   `(cider-test-error-face       ((t (:foreground ,highlight))))
   `(cider-result-overlay-face   ((t (:background ,bg2 :box (:line-width -1 :color ,fg2)))))

   ;; company
   `(company-scrollbar-bg             ((t (:background ,fg))))
   `(company-scrollbar-fg             ((t (:foreground ,fg))))
   `(company-echo-common              ((t (:background ,fg :foreground ,bg1))))
   `(company-preview                  ((t (:foreground ,highlight :foreground ,fg))))
   `(company-tooltip                  ((t (:background ,bg2 :foreground ,fg))))
   `(company-tooltip-annotation       ((t (:foreground ,highlight))))
   `(company-tooltip-common           ((t (:foreground ,fg))))
   `(company-tooltip-common-selection ((t (:foreground ,highlight))))
   `(company-tooltip-selection        ((t (:background ,bg2 :foreground ,fg))))
   `(company-tooltip-selection-       ((t (:background ,bg2 :foreground ,fg))))
   `(company-tooltip-mouse            ((t (:inherit highlight))))

   ;; compilation
   `(compilation-line-number    ((t (:bold t))))
   `(compilation-column-number  ((t (:inherit 'font-lock-comment-face))))
   `(compilation-error          ((t (:inherit 'error   :bold t))))
   `(compilation-warning        ((t (:inherit 'warning :italic t))))
   `(compilation-info           ((t (:inherit 'success))))
   `(compilation-mode-line-exit ((t (:inherit 'compilation-info))))
   `(compilation-mode-line-fail ((t (:inherit 'compilation-error))))
   
   ;; TODO
   ;; custom
   `(custom-variable-tag    ((t (:bold t))))

   ;; modeline
   `(header-line         ((t (:inherit 'mode-line  :distant-foreground ,bg1))))
   `(mode-line           ((t (:foreground ,fg  :background ,bg2 :box (:line-width 1 :color ,bg2 :style nil)))))
   `(mode-line-inactive  ((t (:foreground ,fg2 :background ,bg1 :box (:line-width 1 :color ,bg2 :style nil)))))
   `(mode-line-buffer-id ((t (:foreground ,fg :bold t :distant-foreground ,bg2))))
   `(mode-line-emphasis  ((t (:foreground ,fg :bold t))))
   `(mode-line-highlight ((t (:foreground ,bg2))))

   ;; completions
   `(completions-common-part ((t (:foreground ,fg :bold t))))

   ;; dired
   `(dired-directory  ((t (:foreground ,fg :bold t))))
   `(dired-ignored    ((t (:foreground ,fg))))
   `(dired-flagged    ((t (:foreground ,ok))))
   `(dired-header     ((t (:foreground ,fg  :bold t))))
   `(dired-mark       ((t (:foreground ,red :bold t))))
   `(dired-marked     ((t (:foreground ,red :bold t))))
   `(dired-perm-write ((t (:foreground ,fg  :underline t))))
   `(dired-symlink    ((t (:foreground ,fg  :italic t))))
   `(dired-warning    ((t (:foreground ,red))))

   ;; info
   `(info-quoted    ((t (:inherit 'default :bold t))))
   `(info-menu-star ((t (:bold t))))

   ;; helm
   `(helm-header ((t (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
   `(helm-source-header
     ((t (:foreground ,fg
                      :background ,bg1
                      :underline nil
                      :weight bold
                      :box (:line-width 1 :style released-button)))))
   `(helm-selection ((t (:background ,fg :underline t :foreground ,bg1))))
   `(helm-selection-line ((t (:background ,fg))))
   `(helm-visible-mark ((t (:foreground ,fg2 :background ,bg2))))
   `(helm-candidate-number ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-separator ((t (:foreground ,fg :background ,bg1))))
   `(helm-time-zone-current ((t (:foreground ,fg :background ,bg1))))
   `(helm-time-zone-home ((t (:foreground ,fg :background ,bg1))))
   `(helm-bookmark-addressbook ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,fg :background ,bg1))))
   `(helm-bookmark-info ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-bookmark-man ((t (:foreground ,fg :background ,bg1))))
   `(helm-bookmark-w3m ((t (:foreground ,fg :background ,bg1))))
   `(helm-buffer-not-saved ((t (:foreground ,fg :background ,bg1))))
   `(helm-buffer-process ((t (:foreground ,fg :background ,bg1))))
   `(helm-buffer-saved-out ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-buffer-size ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-ff-directory ((t (:foreground ,fg :background ,bg1 :weight bold))))
   `(helm-ff-file ((t (:foreground ,fg2 :background ,bg1 :weight normal))))
   `(helm-ff-file-extension ((t (:foreground ,fg2 :weight bold))))
   `(helm-ff-executable ((t (:foreground ,fg2 :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,fg :background ,bg1 :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,fg :background ,bg1 :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,bg1 :background ,fg :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,fg :background ,bg1))))
   `(helm-grep-file ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-finish ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-lineno ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,fg :background ,bg1))))
   `(helm-lisp-show-completion ((t (:background ,bg2))))
   `(helm-match ((t (:background ,search))))
   `(helm-moccur-buffer ((t (:foreground ,fg :background ,bg1))))
   `(helm-mu-contacts-address-face ((t (:foreground ,fg2 :background ,bg1))))
   `(helm-mu-contacts-name-face ((t (:foreground ,fg2 :background ,bg1))))

   ;; magit
   `(magit-bisect-bad        ((t (:foreground ,red))))
   `(magit-bisect-good       ((t (:foreground ,ok))))
   `(magit-bisect-skip       ((t (:foreground ,fg))))
   `(magit-blame-date        ((t (:foreground ,red))))
   `(magit-branch            ((t (:foreground ,fg :bold t))))
   `(magit-branch-local      ((t (:foreground ,fg :bold t))))
   `(magit-branch-remote     ((t (:foreground ,fg :bold t))))
   `(magit-diff-file-heading ((t (:foreground ,fg :bold nil))))
   `(magit-diff-whitespace-warning ((t (:background ,red))))

   `(magit-diff-context-highlight ((t (:foreground ,fg :background ,bg2))))
   `(magit-diff-file-header       ((t (:foreground ,fg :background ,bg2))))
   `(magit-diffstat-added         ((t (:foreground ,ok))))
   `(magit-diffstat-removed       ((t (:foreground ,red))))
   `(magit-dimmed                 ((t (:foreground ,fg))))
   `(magit-hash                   ((t (:foreground ,fg))))
   `(magit-hunk-heading           ((t (:background ,bg2))))
   `(magit-hunk-heading-highlight ((t (:background ,bg2))))
   `(magit-item-highlight         ((t (:background ,bg2))))
   `(magit-log-author             ((t (:foreground ,fg))))
   `(magit-process-ng             ((t (:foreground ,highlight :bold t))))
   `(magit-process-ok             ((t (:foreground ,ok :bold t))))
   `(magit-section-heading        ((t (:foreground ,fg :bold t))))
   `(magit-section-highlight      ((t (:background ,bg2))))

   ;; diff-hl
   `(diff-hl-insert         ((t (:foreground ,ok  :background ,bg1 :bold nil :italic nil))))
   `(diff-hl-delete         ((t (:foreground ,red :background ,bg1 :bold nil :italic nil))))
   `(diff-hl-change         ((t (:foreground ,fg  :background ,bg1 :bold nil :italic nil))))
   `(diff-hl-ignore         ((t (:foreground ,fg  :background ,bg1 :bold nil :italic nil))))
   `(diff-hl-margin-ignore  ((t (:foreground ,fg  :background ,bg1 :bold nil :italic nil))))
   `(diff-hl-margin-unknown ((t (:foreground ,fg  :background ,bg1 :bold nil :italic nil))))

   ;; help
   `(help-key-binding ((t (:foreground ,fg :background ,bg2 :box (:line-width (1 . -1) :color ,fg2)))))

   ;; outline, extends org-outline
   `(outline-1 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-2 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-3 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-4 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-5 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-6 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-7 ((t (:foreground ,fg :bold t :extend t))))
   `(outline-8 ((t (:foreground ,fg :bold t :extend t))))

   ;; org
   `(org-code                  ((t (:background ,str :distant-foreground ,bg1 :background ,bg2))))
   `(org-link                  ((t (:underline t))))
   `(org-block                 ((t (:foreground ,fg :background ,bg2 :extend t))))
   `(org-block-begin-line      ((t (:foreground ,fg :background ,bg2 :bold t :extend t))))
   `(org-block-end-line        ((t (:foreground ,fg :background ,bg2 :bold t :extend t))))
   `(org-drawer                ((t (:foreground ,fg :bold t))))
   `(org-document-info         ((t (:foreground ,fg :background ,bg1 :italic t))))
   `(org-document-info-keyword ((t (:foreground ,fg :background ,bg1))))
   `(org-document-title        ((t (:foreground ,fg :weight bold))))
   `(org-done                  ((t (:foreground ,ok :bold t :strike-through t))))
   `(org-ellipsis              ((t (:foreground ,fg))))
   `(org-meta-line             ((t (:background ,bg1))))
   `(org-formula               ((t (:foreground ,fg))))
   `(org-headline-done         ((t (:foreground ,fg :weight normal :strike-through t))))
   `(org-hide                  ((t (:foreground ,bg1 :background ,bg1))))
   `(org-list-dt               ((t (:foreground ,fg :bold t))))
   `(org-scheduled             ((t (:foreground ,red))))
   `(org-scheduled-today       ((t (:foreground ,ok))))
   `(org-table                 ((t (:foreground ,fg))))
   `(org-tag                   ((t (:foreground ,fg  :background ,bg1 :bold t))))
   `(org-todo                  ((t (:foreground ,red :bold t))))
   `(org-warning               ((t (:inherit 'warning))))
   `(org-upcoming-deadline     ((t (:foreground ,red))))
   `(org-priority              ((t (:foreground ,highlight))))
   `(org-footnote              ((t (:foreground ,highlight))))
   `(org-scheduled-previously  ((t (:foreground ,highlight))))
   `(org-sexp-date             ((t (:foreground ,highlight))))
   `(org-special-keyword       ((t (:foreground ,highlight))))
   `(org-date                  ((t (:background ,bg1 :bold t))))

   ;; markdown mode
   `(markdown-header-face             ((t (:foreground ,fg :bold t))))
   `(markdown-list-face               ((t (:foreground ,fg :bold t))))
   `(markdown-bold-face               ((t (:foreground ,fg :bold t))))
   `(markdown-blockquote-face         ((t (:foreground ,fg :italic t))))
   `(markdown-italic-face             ((t (:foreground ,fg :italic t))))
   `(markdown-link-face               ((t (:foreground ,fg :underline t))))
   `(markdown-url-face                ((t (:foreground ,fg :underline t))))
   `(markdown-header-delimiter-face   ((t (:inherit 'markdown-header-face))))
   `(markdown-metadata-key-face       ((t (:foreground ,fg))))
   `(markdown-markup-face             ((t (:foreground ,fg))))
   `(markdown-pre-face                ((t (:foreground ,fg))))
   `(markdown-code-face               ((t (:foreground ,fg :background ,bg2 :extend t))))
   `(markdown-reference-face          ((t (:foreground ,fg))))
   `(markdown-html-attr-name-face     ((t (:inherit 'font-lock-variable-name-face))))
   `(markdown-html-attr-value-face    ((t (:inherit 'font-lock-string-face))))
   `(markdown-html-entity-face        ((t (:inherit 'font-lock-variable-name-face))))
   `(markdown-html-tag-delimiter-face ((t (:inherit 'markdown-markup-face))))
   `(markdown-html-tag-name-face      ((t (:inherit 'font-lock-keyword-face))))
   `(markdown-inline-code-face        ((t (:inherit 'markdown-code-face :extend nil))))

   ;; sh
   `(sh-quoted-exec ((t (:background ,bg2))))
   `(sh-heredoc     ((t (:background ,bg2))))

   ;; show-paren
   `(show-paren-match-face       ((t (:background ,highlight :bold t))))
   `(show-paren-match            ((t (:background ,highlight :bold t))))
   `(show-paren-match-expression ((t (:background ,highlight :bold t))))
   `(show-paren-mismatch         ((t (:background ,fg :foreground ,red :bold t))))

   ;; LaTeX
   `(font-latex-sectioning-0-face ((t (:bold t))))
   `(font-latex-sectioning-1-face ((t (:bold t))))
   `(font-latex-sectioning-2-face ((t (:bold t))))
   `(font-latex-sectioning-3-face ((t (:bold t))))
   `(font-latex-sectioning-4-face ((t (:italic t))))
   `(font-latex-sedate-face       ((t (:foreground ,fg :background ,bg1))))
   `(font-latex-italic-face       ((t (:foreground ,fg :italic t))))
   `(font-latex-bold-face         ((t (:foreground ,fg :bold t))))
   `(font-latex-verbatim-face     ((t (:background ,bg2 :bold t))))
   `(font-latex-string-face       ((t (:foreground ,fg))))
   `(font-latex-warning-face      ((t (:foreground ,bg2))))
   `(font-latex-math-face         ((t (:foreground ,fg))))
   `(font-latex-script-char-face  ((t (:foregroudn ,fg))))

   ;; wo/man
   `(Man-overstrike ((t (:foreground ,fg :bold t))))
   `(Man-underline  ((t (:foreground ,fg :underline nil :italic t))))
   `(woman-bold     ((t (:inherit 'Man-overstrike))))
   `(woman-italic   ((t (:inherit 'Man-underline))))

   ;; web-mode
   `(web-mode-doctype-face           ((t (:foreground ,fg))))
   `(web-mode-html-tag-face          ((t (:foreground ,fg :italic t))))
   `(web-mode-html-tag-bracket-face  ((t (:foreground ,fg))))
   `(web-mode-html-attr-name-face    ((t (:foreground ,fg :bold t))))
   `(web-mode-html-entity-face       ((t (:foreground ,fg :italic t))))
   `(web-mode-block-control-face     ((t (:foreground ,fg))))
   `(web-mode-html-tag-bracket-face  ((t (:foreground ,fg :bold t))))

   ;; visual-regexp
   `(vr/match-0 ((t (:background ,bg2 :foreground ,red :bold t))))
   `(vr/match-1 ((t (:background ,bg2 :foreground ,red))))
   `(vr/group-0 ((t (:background ,bg2 :foreground ,red :bold t))))
   `(vr/group-1 ((t (:background ,bg2 :foreground ,red))))
   `(vr/group-2 ((t (:background ,bg2 :foreground ,fg))))

   ;; white-space
   `(whitespace-empty       ((t (:background ,bg2))))
   `(whitespace-space       ((t (:foreground ,fg))))
   `(whitespace-newline     ((t (:foreground ,fg))))
   `(whitespace-tab         ((t (:foreground ,fg   :background ,bg1))))
   `(whitespace-indentation ((t (:foreground ,red  :background ,fg))))
   `(whitespace-line        ((t (:foreground ,red  :background ,fg :weight bold))))
   `(nobreak-space          ((t (:inherit 'default :underline nil))))
   `(whitespace-trailing    ((t (:foreground ,red))))))
