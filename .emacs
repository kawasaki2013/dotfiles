;;; .emacs
;;;; uncomment this line to disable loading of "default.el" at startup
;;; (setq inhibit-default-init t)
;
;;; turn on font-lock mode
;(global-font-lock-mode t)
;
;;; enable visual feedback on selections
;;(setq transient-mark-mode t)
;      
;;; scratch $B%b!<%I$N:G=i$N%a%C%;!<%8$O>C$9(B
;(setq initial-scratch-message nil) 
;
;;;wanderlust
;(autoload 'wl "wl" "Wanderlust" t)
;(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
;
;;; $BF|K\8l$,2=$1$J$$$h$&$K$9$k(B
;(set-language-environment "Japanese")
;(set-default-coding-systems 'euc-jp-unix)
;(set-terminal-coding-system 'euc-jp-unix)
;(set-keyboard-coding-system 'euc-jp-unix)
;(set-buffer-file-coding-system 'euc-jp-unix)
;
;;;$B%9%/%m!<%k$r(B1$B9TC10L$K$9$k(B
;(setq scroll-step 1)
;
;;;$B0JA0JT=8$7$?%U%!%$%k$N%+!<%=%k0LCV$r3P$($k(B
;;;(~/.emacs-places $B$K5-O?$5$l$k(B)
;(require 'saveplace)
;(setq-default save-place t)
;
;;;DEL $B$r(B DEL(C-d)
;;;$B$K3d$jEv$F$k(B($B%G%U%)%k%H$O(B BS)
;;(require 'saveplace)
;;(setq-default save-place t)
;
;
;;;;
;;;; for canna
;;;;
;
;;;(if (and (boundp 'CANNA) CANNA) ; $B!X$+$s$J(B/emacs$B!Y$G$"$k$3$H$r3NG'(B
;;;    ;;$B$+$s$J(B/emacs$B$N>l9g$N$_0J2<$r<B9T$9$k(B
;;;    (progn
;;;    ;;;      (setq canna-underline t)   ;$B%"%s%@!<%i%$%s%9%?%$%k(B
;;;      (setq default-input-method 'japanese-canna)
;;;      (load-library "canna")
;;;      (setq canna-do-keybind-for-functionkeys nil)
;;;      (setq canna-server "localhost")
;;;      (canna)
;;;      
;;;    ;;; $B$+$s$J$G$N%j!<%8%g%s$NC18lEPO?$r(B C-t$B$G9T$&(B
;;;      (global-set-key "\C-t" 'canna-touroku-region)
;;;      
;;;      
;;;    ;;; $B%"%s%I%%$N@_Dj(B
;;;      (global-set-key "\C-_" 'canna-undo)
;;;      
;;;      ;;      (setq canna-use-color t)
;;;      
;;;;;    ;;;$B$+$s$J$NJQ49Cf$K(B BS & DEL $B$r;H$&(B
;;;	;(define-key canna-mode-map [backspace] [?\C-h])
;;;	;(define-key canna-mode-map [delete] [?\C-h])
;;;      
;;;    ;;;$B$+$s$J$NJQ49Cf$K(B C-h $B$r;H$&(B (with term/keyswap)
;;;    ;;;(define-key canna-mode-map [?\177] [?\C-h])
;;;      
;;;      (global-set-key "\C-\\" 'canna-toggle-japanese-mode)
;;;      (global-unset-key [kanji])
;;;      (global-set-key "\C-o" 'open-line)
;;;      )
;;;  )
;;;
;;;;; "nn" $B$G!V$s!W$rF~NO(B
;;;(setq enable-double-n-syntax t)
;
;;;(setq default-input-method 'japanese)
;
;
;
;
;;;;
;;;;w3m$B$N@_Dj(B
;;;;
;;; M-x w3m$B$G(Bw3m$B$r5/F0$9$k@_Dj(B
;(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;
;;; M-x w3m-find-file$B$H$7$F!"%Z!<%8%c$H$7$F$N(Bw3m$B$N5!G=$rMxMQ$9$k!#(B
;(autoload 'w3m-find-file "w3m" "w3m interface function for local file." t)
;
;;; browse-url w3m
;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;(setq browse-url-browser-function 'w3m-browse-url)
;;; URI$B$i$7$-ItJ,$rA*Br$7$F(BC-xm$B$9$k$H(Bemacs-w3m$B5/F0(B
;(global-set-key "\C-xm" 'browse-url-at-point)
;;; M(shift+m)$B$7$?;~$N%V%i%&%6$N@_Dj!#(B
;(setq browse-url-netscape-program "~/bin/open_navigator.sh")
;;; mailto$B$N(BURI$B$r2!2<$7$?;~$N@_Dj(B $BK\Ev$O$3$l$G$O$@$a$i$7$$!#!#(B
;(setq w3m-mailto-url-function 'wl-draft)
;
;;; $B8!:w$N@_Dj(B M-x w3m-search
;(autoload 'w3m-search "w3m-search" "Search QUERY using SEARCH-ENGINE." t)
;;; $B8!:w$r(BGoogle($BF|K\8l%5%$%H(B)$B$G$*$3$J$&(B
;(setq w3m-search-default-engine "google-ja")
;;; C-cs$B$r2!2<$9$k$H$I$N(BBuffer$B$+$i$G$b8!:w$r3+;O(B
;(global-set-key "\C-cs" 'w3m-search)
;
;(autoload 'w3m-weather "w3m-weather" "Display weather report." t)
;(autoload 'w3m-antenna "w3m-antenna" "Report chenge of WEB sites." t)
;;form$B$KF~NO2DG=$H$9$k!#:#$OITMW$+$b$7$l$J$$(B
;(setq w3m-use-form t)
;;$B$&$^$/5/F0$7$J$$>l9g0J2<$r@_Dj$7$F$_$k$H$h$$(B
;;(setq w3m-command "/usr/local/bin/w3m")
;;$B=i4|5/F0;~$KI=<($9$k2hLL(B
;;(setq w3m-home-page "/Users/sakito/.w3m/bookmark.html")
;;$B2hA|$rI=<($7$J$$!#I,MW$G$O$J$$$,$H$j$"$($:(B
;(setq w3m-display-inline-image nil)
;
;  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;; $B2~9TKI;_@_Dj(B
;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(setq next-line-add-newlines nil)
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;; $B9THV9f!&7eHV9f$NI=<(@_Dj(B
;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(line-number-mode t) ; $B9THV9f(B
;(column-number-mode t) ; $B7eHV9f(B
;
;
;(custom-set-variables
; '(jde-compiler (quote ("javac" "")))
; '(load-home-init-file t t))
;(custom-set-faces)
;
;
;;; Always end a file with a newline
;(setq require-final-newline t)
;
;;; Stop at the end of the file, not just add lines
;(setq next-line-add-newlines nil)
;
;
;;; Visual feedback on selections
;(setq-default transient-mark-mode t)
; 
;;; Enable wheelmouse support by default
;(cond (window-system
;       (mwheel-install)
;))
;
;
;;; Set up the keyboard so the delete key on both the regular keyboard
;;; and the keypad delete the character under the cursor and to the right
;;; under X, instead of the default, backspace behavior.
;(global-set-key [delete] 'delete-char)
;(global-set-key [kp-delete] 'delete-char)
;
;(setq tex-default-mode 'latex-mode)
;;; C-c C-f $B$G(B platex $B$r<B9T(B
;(setq latex-run-command "platex")
;;; C-c C-v $B$G(B pxdvi $B$r5/F0(B
;(setq tex-dvi-view-command "pxdvi")
;;; C-c C-p $B$G(B pdvips $B$r<B9T(B
;(setq tex-dvi-print-command "pdvips")
;;; [esc]$B"*(B[x]$B"*(B[tex-alt-print] $B$GMQ;f$r@_Dj$7$F(B dvips $B$r<B9T(B
;;(setq tex-alt-dvi-print-command
;;$B!!!!(B'(format "pdvips -t%s" (read-string "Use paper: ")))
;;; $B>e5-!VMQ;f$r@_Dj$7$F(B dvips $B$r<B9T!W$r(B C-c C-q $B$K3d$jEv$F$k@_Dj(B
;;(add-hook 'tex-mode-hook
;;$B!!!!(B'(lambda () (local-set-key "\C-c\C-q" 'tex-alt-print)))
;
;
;;;for time stamp
;(add-hook 'write-file-hooks 'time-stamp)
;
;;;$B%S!<%W2;(B
;(setq visible-bell t);;$B%(%i!<;~H?E>(B
;
;
;(setq viper-mode t)
;(require 'viper)
;
;;;(set-keyboard-coding-system 'euc-japan)
