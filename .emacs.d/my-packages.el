;;; Code:

(require 'package)
(require 'quelpa (locate-user-emacs-file "site-lisp/quelpa/quelpa"))

(require 'recentf)

(setq recentf-auto-cleanup 'never)

(add-to-list 'recentf-exclude "/elpa/.*-autoloads\\.el\\'")
(add-to-list 'recentf-exclude "/quelpa/packages/.*\\.el\\'")

(add-to-list 'package-archives '("melpa" . "https://www.mirrorservice.org/sites/melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(use-package exec-path-from-shell :ensure t)
(exec-path-from-shell-initialize)

(use-package 0xc :ensure t)
(use-package 2048-game :ensure t)
(use-package aa-edit-mode :ensure t)
(use-package ac-geiser :ensure t)
(use-package ac-html :ensure t)
(use-package ac-ispell :ensure t)
(use-package actionscript-mode :ensure t)
(use-package adoc-mode :ensure t)
(use-package all-the-icons-dired :ensure t)
(use-package anaphora :ensure t)
(use-package annotate :ensure t)
(use-package aozora-view :ensure t)
(use-package apache-mode :ensure t)
(use-package atomic-chrome :ensure t)
(use-package auto-complete :ensure t)
(use-package auto-minor-mode :ensure t)
(use-package auto-read-only :ensure t)
(use-package beacon :ensure t)
(use-package benchmark-init :ensure t)
(use-package bind-key :ensure t)
(use-package bm :ensure t)
(use-package brainfuck-mode :ensure t)
(use-package calfw :ensure t)
;;(quelpa 'calfw-git" :git 'https://gist.github.com/d77d9669440f3336bb9d.git)
;;(quelpa 'calfw-syobocal" :git 'https://gist.github.com/1fd257fc1e8907d4d92e.git" :files ("*.el))
(use-package cedit :ensure t)
(use-package cmake-mode :ensure t)
(use-package codic :ensure t)
(use-package coffee-mode :ensure t)
(use-package color-moccur :ensure t)
(quelpa 'commonmark '(:fetcher github :repo "zonuexe/CommonMark.el"))
(use-package composer :ensure t)
(use-package copy-file-on-save :ensure t)
(use-package copyit :ensure t)
(use-package copyit-pandoc :ensure t)
(use-package counsel :ensure t)
(use-package counsel-osx-app :ensure t)
(use-package cov :ensure t)
(use-package crux :ensure t)
(use-package csv-mode :ensure t)
(use-package dash :ensure t)
(use-package dash-at-point :ensure t)
(use-package datetime-format :ensure t)
(use-package diminish :ensure t)
(use-package dired-k :ensure t)
(quelpa '(dired-toggle :fetcher github :repo "zonuexe/dired-toggle"))
(use-package direx :ensure t)
(quelpa '(dmacro :fetcher github :repo "zonuexe/dmacro"))
(use-package dockerfile-mode :ensure t)
(use-package drag-stuff :ensure t)
(use-package ecukes :ensure t)
(use-package edbi :ensure t)
(use-package edbi-sqlite :ensure t)
(use-package ede-php-autoload :ensure t)
(use-package edit-server :ensure t)
(use-package editorconfig :ensure t)
(use-package elisp-slime-nav :ensure t)
(use-package elixir-mode :ensure t)
(use-package elscreen :ensure t)
(use-package emacsql-mysql :ensure t)
(use-package emmet-mode :ensure t)
(use-package emms-player-mpv-jp-radios :ensure t)
(use-package emoji-cheat-sheet-plus :ensure t)
(use-package emoji-fontset :ensure t)
(use-package enh-ruby-mode :ensure t)
(use-package enlive :ensure t)
(use-package esa :ensure t)
(use-package eshell-fringe-status :ensure t)
(use-package ess :ensure t)
(use-package evalator :ensure t)
(use-package expand-region :ensure t)
(use-package f :ensure t)
(use-package flycheck :ensure t)
(use-package flycheck-cask :ensure t)
(use-package flycheck-package :ensure t)
(use-package flycheck-rust :ensure t)
(use-package font-lock-studio :ensure t)
(use-package font-utils :ensure t)
(use-package format-sql :ensure t)
(use-package fsharp-mode :ensure t)
(use-package geben :ensure t)
(use-package geiser :ensure t)
(use-package gist :ensure t)
(use-package gitignore-mode :ensure t)
(use-package gnugo :ensure t)
(use-package go-mode :ensure t)
(use-package google-translate :ensure t)
(use-package grapnel :ensure t)
(use-package habitica :ensure t)
(use-package hacker-typer :ensure t)
(use-package hamburger-menu :ensure t)
(use-package haml-mode :ensure t)
(use-package haskell-mode :ensure t)
(use-package helm :ensure t)
(use-package helm-ag :ensure t)
(use-package helm-descbinds :ensure t)
(use-package helm-emms :ensure t)
(use-package helm-img-tiqav :ensure t)
(use-package helm-projectile :ensure t)
(use-package helm-smex :ensure t)
(use-package helm-swoop :ensure t)
(use-package helm-themes :ensure t)
(use-package hierarchy :ensure t)
(use-package ht :ensure t)
(use-package htmlize :ensure t)
(use-package http :ensure t)
(use-package hydra :ensure t)
(use-package idle-highlight-mode :ensure t)
(use-package ido-completing-read+ :ensure t)
(use-package ido-vertical-mode :ensure t)
(use-package indent-guide :ensure t)
(use-package inf-ruby :ensure t)
(use-package init-open-recentf :ensure t)
(use-package ivs-edit :ensure t)
(use-package ivy :ensure t)
(use-package jade-mode :ensure t)
(use-package jetbrains :ensure t)
(use-package js2-mode :ensure t)
(use-package json-mode :ensure t)
(use-package key-chord :ensure t)
(use-package key-combo :ensure t)
(use-package keyfreq :ensure t)
(use-package less-css-mode :ensure t)
(use-package lispxmp :ensure t)
(use-package load-theme-buffer-local :ensure t)
(use-package logalimacs :ensure t)
(use-package logview :ensure t)
(use-package lsp-mode :ensure t)
(use-package lua-mode :ensure t)
(use-package macrostep :ensure t)
(use-package magic-filetype :ensure t)
(use-package magit :ensure t)
(use-package magit-find-file :ensure t)
(use-package markdown-mode :ensure t)
(use-package markdown-preview-eww :ensure t)
(use-package maruo-macro-mode :ensure t)
(use-package minesweeper :ensure t)
(quelpa '(mode-test :fetcher github :repo "emacs-php/mode-test" :files ("mode-test.el")))
(use-package multiple-cursors :ensure t)
(use-package nameless :ensure t)
(use-package navi2ch)
(use-package neon-mode :ensure t)
(use-package neotree :ensure t)
(use-package nginx-mode :ensure t)
(use-package nim-mode :ensure t)
(use-package nodejs-repl :ensure t)
(use-package nord-theme :ensure t)
(use-package nyan-mode :ensure t)
(use-package ob-ipython :ensure t)
(use-package ob-nim :ensure t)
(use-package open-junk-file :ensure t)
(use-package org-ac :ensure t)
(use-package org-rtm :ensure t)
(use-package org-table-sticky-header :ensure t)
(use-package org-trello :ensure t)
(use-package osx-lib :ensure t)
(use-package ov :ensure t)
(use-package ox-ioslide :ensure t)
(use-package pacmacs :ensure t)
(use-package page-break-lines :ensure t)
(use-package pandoc :ensure t)
(use-package paredit :ensure t)
(quelpa '(pcap-mode :fetcher github :repo "orgcandman/pcap-mode"))
(use-package pdf-tools :ensure t)
(use-package peep-dired :ensure t)
(use-package phan :ensure t)
(use-package php-mode :ensure t)
(use-package phpactor :ensure t)
(use-package flycheck-phpstan :ensure t)
(quelpa '(php-util :fetcher github :repo "zonuexe/php-util.el"))
;;(quelpa 'php7-mode '(:fetcher github :repo "emacs-php/Php7mode"))
(quelpa '(phpunit :fetcher github :repo "nlamirault/phpunit.el" :branch "develop"))
(use-package presentation :ensure t)
(use-package pixiv-novel-mode :ensure t)
(use-package pomodoro :ensure t)
(use-package ponylang-mode :ensure t)
(use-package popwin :ensure t)
(use-package powershell :ensure t)
(use-package prodigy :ensure t)
(use-package projectile :ensure t)
(use-package projectile-rails :ensure t)
(use-package psysh :ensure t)
(use-package qiita :ensure t)
(use-package quickrun :ensure t)
(use-package rainbow-mode :ensure t)
(use-package rebecca-theme :ensure t)
(use-package recentf-ext :ensure t)
(use-package region-convert :ensure t)
(use-package request-deferred :ensure t)
(use-package restclient :ensure t)
(use-package review-mode :ensure t)
(use-package right-click-context :ensure t)
(use-package rg :ensure t)
(use-package robe :ensure t)
(use-package robots-txt-mode :ensure t)
(use-package rust-mode :ensure t)
(use-package s :ensure t)
(use-package scss-mode :ensure t)
(use-package sequential-command :ensure t)
(use-package shx :ensure t)
(use-package sl :ensure t)
(use-package slim-mode :ensure t)
(use-package sly :ensure t)
(use-package smart-newline :ensure t)
(use-package smart-jump :ensure t)
(quelpa '(smartchr :repo "imakado/emacs-smartchr" :fetcher github))
(use-package smartparens :ensure t)
(use-package smartrep :ensure t)
(use-package smex :ensure t)
(use-package smooth-scroll :ensure t)
(use-package sokoban :ensure t)
;;(quelpa 'sql-drill)
(use-package ssh-config-mode :ensure t)
(use-package stylus-mode :ensure t)
(use-package sudoku :ensure t)
(use-package swoop :ensure t)
(use-package test-simple :ensure t)
(use-package threes :ensure t)
(use-package thrift :ensure t)
(use-package tide :ensure t)
(use-package timecop :ensure t)
(use-package toml :ensure t)
(use-package toml-mode :ensure t)
(use-package treemacs :ensure t)
(use-package ucs-utils :ensure t)
(use-package undo-tree :ensure t)
(use-package untitled-new-buffer :ensure t)
(use-package vagrant-tramp :ensure t)
(use-package vi-tilde-fringe :ensure t)
(use-package vimrc-mode :ensure t)
(use-package visual-regexp :ensure t)
(use-package vlf :ensure t)
(use-package volatile-highlights :ensure t)
(use-package w3m :ensure t)
(use-package wandbox :ensure t)
(use-package wc-mode :ensure t)
(use-package web-mode :ensure t)
(use-package wgrep :ensure t)
(use-package wgrep-ag :ensure t)
(use-package which-key :ensure t)
(use-package writeroom-mode :ensure t)
(quelpa '(xterm-keybinder :fetcher github :repo "yuutayamada/xterm-keybinder-el"))
(use-package yafolding :ensure t)
(use-package yaml-mode :ensure t)
(use-package yard-mode :ensure t)
(use-package yasnippet :ensure t)
(use-package yasnippet-snippets :ensure t)
(use-package zenity-color-picker :ensure t)

;;; my-packages.el ends here
