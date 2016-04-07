;;; pixiv-dev --- p(ixi)v -*- coding: utf-8 ; lexical-binding: t -*-

;; Copyright (C) 2016 USAMI Kenta

;; Author: USAMI Kenta <tadsan@zonu.me>
;; Created: 2016-04-01
;; Modified: 2016-04-07
;; Version: 0.4.0
;; Keywords: php
;; Namespace: pixiv-dev-
;; URL: https://github.com/zonuexe/dotfiles/tree/master/.emacs.d/site-lisp

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;; Code:
(require 'psysh nil t)

(defgroup pixiv-dev '()
  "Develop pixiv.net and other services."
  :group 'programming)

(defcustom pixiv-dev-user-name user-login-name
  "Login name for pixiv-dev(LDAP) or E-mail address.")

(defcustom pixiv-dev-host "pixiv-dev"
  "Host name of your pixiv develop server.")

(defun pixiv-dev--working-dir ()
  "Wokring directory of `pixiv.git'."
  (format "/scp:%s:/home/%s/pixiv/" pixiv-dev-host pixiv-dev-user-name))

;;;###autoload
(defun pixiv-dev-shell ()
  "Run PHP interactive shell for pixiv."
  (interactive)
  (let ((current-dir default-directory)
        (buffer      nil))
    (cd (pixiv-dev--working-dir))
    (setq buffer (make-comint "pixiv-shell" "dev-script/shell.php"))
    (cd current-dir)
    (switch-to-buffer buffer))
  (when (fboundp 'psysh-mode)
    (psysh-mode)))

(provide 'pixiv-dev)
;;; pixiv-dev.el ends here
