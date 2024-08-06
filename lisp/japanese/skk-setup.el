;; lisp/skk-config.el
(use-package ddskk
  :ensure t
  :init
  (setq skk-user-directory "~/.emacs.d/skk")
  (setq skk-jisyo "~/.emacs.d/skk/SKK-JISYO.L")
  (setq skk-preload-skkserv t)
  (setq skk-server-host "localhost")
  (setq skk-server-portnum 1178)
  (setq skk-dcomp-activate t)
  :config
  (setq default-input-method "japanese-skk")
  (global-set-key (kbd "C-x j") 'skk-mode)
  (setq skk-egg-like-newline t)
  (setq skk-rom-kana-rule-list
        '(("nn" "ん")
          ("a" "あ") ("i" "い") ("u" "う") ("e" "え") ("o" "お")
          ("ka" "か") ("ki" "き") ("ku" "く") ("ke" "け") ("ko" "こ")
          ("sa" "さ") ("shi" "し") ("su" "す") ("se" "せ") ("so" "そ")
          ("ta" "た") ("chi" "ち") ("tsu" "つ") ("te" "て") ("to" "と")
          ("na" "な") ("ni" "に") ("nu" "ぬ") ("ne" "ね") ("no" "の")
          ("ha" "は") ("hi" "ひ") ("fu" "ふ") ("he" "へ") ("ho" "ほ")
          ("ma" "ま") ("mi" "み") ("mu" "む") ("me" "め") ("mo" "も")
          ("ya" "や") ("yu" "ゆ") ("yo" "よ")
          ("ra" "ら") ("ri" "り") ("ru" "る") ("re" "れ") ("ro" "ろ")
          ("wa" "わ") ("wo" "を")
          ("n" "ん")
          ;; Digraphs
          ("kya" "きゃ") ("kyu" "きゅ") ("kyo" "きょ")
          ("sha" "しゃ") ("shu" "しゅ") ("sho" "しょ")
          ("cha" "ちゃ") ("chu" "ちゅ") ("cho" "ちょ")
          ("nya" "にゃ") ("nyu" "にゅ") ("nyo" "にょ")
          ("hya" "ひゃ") ("hyu" "ひゅ") ("hyo" "ひょ")
          ("mya" "みゃ") ("myu" "みゅ") ("myo" "みょ")
          ("rya" "りゃ") ("ryu" "りゅ") ("ryo" "りょ"))))
