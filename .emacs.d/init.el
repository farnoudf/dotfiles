(require 'package)
(setq package-enable-at-startup nil
      package-archives
      '(("gnu" . "http://elpa.gnu.org./packages/")
        ("org" . "http://orgmode.org/elpa/")
        ("melpa" . "http://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/pachages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))
(setq use-package-verbose t
      use-package-always-ensure t)
(eval-when-compile
   (require 'use-package))

(use-package helm
   :config
   (require 'helm-config)
   (global-set-key (kbd "M-x") 'helm-M-x))

(use-package evil
   :init
   (evil-mode t)
   :config
   (require 'evil))

(setq color-themes '())
(use-package color-theme-solarized
   :ensure t
   :config
   (customize-set-variable 'frame-background-mode 'dark)
   (load-theme 'solarized t))
