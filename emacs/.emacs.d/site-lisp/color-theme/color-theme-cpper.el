(eval-when-compile    (require 'color-theme))
(defun my-color-theme ()
  "Color theme by cpper, created 2014-10-10."
  (interactive)
  (color-theme-install
   '(my-color-theme
     ((background-color . "unspecified-bg")
      (background-mode . light)
      (foreground-color . "unspecified-fg"))
     ((ac-fuzzy-cursor-color . "red")
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "unspecified-bg" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
     (ac-candidate-face ((t (:background "lightgray" :foreground "black"))))
     (ac-completion-face ((t (:foreground "darkgray" :underline t))))
     (ac-gtags-candidate-face ((t (:background "lightgray" :foreground "navy"))))
     (ac-gtags-selection-face ((t (:background "navy" :foreground "white"))))
     (ac-selection-face ((t (:background "steelblue" :foreground "white"))))
     (ac-yasnippet-candidate-face ((t (:background "sandybrown" :foreground "black"))))
     (ac-yasnippet-selection-face ((t (:background "coral3" :foreground "white"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (nil))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (c-nonbreakable-space-face ((t (nil))))
     (completions-common-part ((t (:family "default" :foundry "default" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "unspecified-fg" :background "unspecified-bg" :stipple nil :height 1))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cursor ((t (nil))))
     (dropdown-list-face ((t (:family "default" :foundry "default" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :stipple nil :background "lightyellow" :foreground "black" :height 1))))
     (dropdown-list-selection-face ((t (:foreground "black" :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "default" :family "default" :background "purple" :height 1))))
     (eieio-custom-slot-tag-face ((t (:foreground "blue"))))
     (eldoc-highlight-function-argument ((t (:bold t :weight bold))))
     (escape-glyph ((t (:foreground "brown"))))
     (file-name-shadow ((t (:foreground "green"))))
     (fixed-pitch ((t (:family "Monospace"))))
     (font-lock-builtin-face ((t (:bold t :foreground "blue" :weight bold))))
     (font-lock-comment-delimiter-face ((t (:foreground "red"))))
     (font-lock-comment-face ((t (:foreground "red"))))
     (font-lock-constant-face ((t (:foreground "magenta"))))
     (font-lock-doc-face ((t (:foreground "green"))))
     (font-lock-function-name-face ((t (:bold t :foreground "blue" :weight bold))))
     (font-lock-keyword-face ((t (:bold t :foreground "cyan" :weight bold))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:bold t :weight bold :foreground "blue"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "green"))))
     (font-lock-type-face ((t (:foreground "green"))))
     (font-lock-variable-name-face ((t (:foreground "yellow" :weight light))))
     (font-lock-warning-face ((t (:foreground "red"))))
     (fringe ((t (:background "grey95"))))
     (header-line ((t (:underline t))))
     (help-argument-name ((t (nil))))
     (hi-black-b ((t (:bold t :weight bold))))
     (hi-black-hb ((t (:bold t :family "Sans Serif" :weight bold :height 1.67))))
     (hi-blue ((t (:background "light blue"))))
     (hi-blue-b ((t (:bold t :foreground "blue" :weight bold))))
     (hi-green ((t (:background "green"))))
     (hi-green-b ((t (:bold t :foreground "green" :weight bold))))
     (hi-pink ((t (:background "pink"))))
     (hi-red-b ((t (:bold t :foreground "red" :weight bold))))
     (hi-yellow ((t (:background "yellow"))))
     (hide-ifdef-shadow ((t (:foreground "green"))))
     (highlight ((t (:background "green" :foreground "black"))))
     (highlight-symbol-face ((t (:background "gray90"))))
     (isearch ((t (:background "magenta4" :foreground "cyan1"))))
     (isearch-fail ((t (:background "red"))))
     (italic ((t (:underline t))))
     (lazy-highlight ((t (:background "turquoise3"))))
     (link ((t (:foreground "blue" :underline t))))
     (link-visited ((t (:underline t :foreground "magenta4"))))
     (linum ((t (:foreground "green"))))
     (match ((t (:background "yellow" :foreground "black"))))
     (menu ((t (nil))))
     (minibuffer-prompt ((t (:foreground "medium blue"))))
     (mode-line ((t (nil))))
     (mode-line-buffer-id ((t (:bold t :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:foreground "black" :background "green"))))
     (mode-line-inactive ((t (nil))))
     (mouse ((t (nil))))
     (next-error ((t (:foreground "white" :background "blue"))))
     (nobreak-space ((t (:background "magenta"))))
     (popup-face ((t (:background "lightgray" :foreground "black"))))
     (popup-isearch-match ((t (:background "sky blue"))))
     (popup-menu-face ((t (:background "lightgray" :foreground "black"))))
     (popup-menu-selection-face ((t (:background "steelblue" :foreground "white"))))
     (popup-scroll-bar-background-face ((t (:background "gray"))))
     (popup-scroll-bar-foreground-face ((t (:background "black"))))
     (popup-tip-face ((t (:background "khaki1" :foreground "black"))))
     (pulse-highlight-face ((t (:background "#FFFFAA"))))
     (pulse-highlight-start-face ((t (:background "#FFFFAA"))))
     (query-replace ((t (:foreground "cyan1" :background "magenta4"))))
     (region ((t (:background "blue" :foreground "white"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "cyan" :foreground "black"))))
     (semantic-decoration-on-private-members-face ((t (:background "#8fffff"))))
     (semantic-decoration-on-protected-members-face ((t (:background "#fffff8"))))
     (semantic-highlight-edits-face ((t (:background "gray90"))))
     (semantic-highlight-func-current-tag-face ((t (:background "gray90"))))
     (semantic-tag-boundary-face ((t (:overline "blue"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray25"))))
     (senator-momentary-highlight-face ((t (:background "gray70"))))
     (senator-read-only-face ((t (:background "#CCBBBB"))))
     (shadow ((t (:foreground "green"))))
     (show-paren-match ((t (:background "turquoise"))))
     (show-paren-mismatch ((t (:background "purple" :foreground "white"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (srecode-separator-face ((t (:bold t :strike-through t :weight bold))))
     (tool-bar ((t (:foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "Sans Serif" :background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (vertical-border ((t (nil))))
     (which-func ((t (:bold t :weight bold :foreground "blue"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red"))))
     (widget-documentation ((t (:foreground "dark green"))))
     (widget-field ((t (:background "yellow3" :foreground "black"))))
     (widget-inactive ((t (:foreground "green"))))
     (widget-single-line-field ((t (:background "green3" :foreground "black"))))
     (yas--field-debug-face ((t (nil))))
     (yas-field-highlight-face ((t (:foreground "white" :background "blue")))))))
(add-to-list 'color-themes '(my-color-theme  "THEME NAME" "YOUR NAME"))

(provide 'color-theme-cpper)
