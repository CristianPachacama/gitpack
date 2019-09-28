#!/bin/sh

#-------------------------------------------------------------------------------
# Copyright 2019 Dominik Salvet
# github.com/dominiksalvet/gitpack
#-------------------------------------------------------------------------------
# DESCRIPTION:
#   This test checks the correct existence files that GitPack works with.
#-------------------------------------------------------------------------------

# basic functions
echo files1 >&2 && gitpack about &&
gitpack help &&
gitpack clean && # clean cache
# check files
echo files3 >&2 && test -d ~/.local/share/gitpack/ &&
echo files4 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files5 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files6 >&2 && test -r ~/.local/share/gitpack/status &&
echo files7 >&2 && test -w ~/.local/share/gitpack/status &&
echo files8 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files9 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files10 >&2 && test ! -d ~/.cache/gitpack/ &&

# install an example project, vhdldep, in version 2.1.0 (not the latest release)
echo files11 >&2 && gitpack status github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack install github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack install github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack status github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack list &&
# check files
echo files12 >&2 && test -d ~/.local/share/gitpack/ &&
echo files13 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files14 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files15 >&2 && test -r ~/.local/share/gitpack/status &&
echo files16 >&2 && test -w ~/.local/share/gitpack/status &&
echo files17 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files18 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files19 >&2 && test -d ~/.cache/gitpack/ &&
echo files20 >&2 && test -d ~/.cache/gitpack/repo/ &&
echo files21 >&2 && test -d ~/.cache/gitpack/repo/github.com/ &&
echo files22 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/ &&
echo files23 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/vhdldep/ &&
echo files24 >&2 && test -e ~/.local/bin/vhdldep && # vhdldep binary

# update to the latest version
echo files25 >&2 && gitpack status github.com/dominiksalvet/vhdldep &&
gitpack install github.com/dominiksalvet/vhdldep &&
gitpack install github.com/dominiksalvet/vhdldep &&
gitpack status github.com/dominiksalvet/vhdldep &&
gitpack list &&
# check files
echo files26 >&2 && test -d ~/.local/share/gitpack/ &&
echo files27 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files28 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files29 >&2 && test -r ~/.local/share/gitpack/status &&
echo files30 >&2 && test -w ~/.local/share/gitpack/status &&
echo files31 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files32 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files33 >&2 && test -d ~/.cache/gitpack/ &&
echo files34 >&2 && test -d ~/.cache/gitpack/repo/ &&
echo files35 >&2 && test -d ~/.cache/gitpack/repo/github.com/ &&
echo files36 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/ &&
echo files37 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/vhdldep/ &&
echo files38 >&2 && test -e ~/.local/bin/vhdldep &&

# downgrade back to 2.1.0
echo files39 >&2 && gitpack status github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack install github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack install github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack status github.com/dominiksalvet/vhdldep=2.1.0 &&
gitpack list &&
# check files
echo files40 >&2 && test -d ~/.local/share/gitpack/ &&
echo files41 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files42 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files43 >&2 && test -r ~/.local/share/gitpack/status &&
echo files44 >&2 && test -w ~/.local/share/gitpack/status &&
echo files45 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files46 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files47 >&2 && test -d ~/.cache/gitpack/ &&
echo files48 >&2 && test -d ~/.cache/gitpack/repo/ &&
echo files49 >&2 && test -d ~/.cache/gitpack/repo/github.com/ &&
echo files50 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/ &&
echo files51 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/vhdldep/ &&
echo files52 >&2 && test -e ~/.local/bin/vhdldep &&

# uninstall vhdldep
echo files53 >&2 && gitpack uninstall github.com/dominiksalvet/vhdldep &&
gitpack uninstall github.com/dominiksalvet/vhdldep &&
gitpack status github.com/dominiksalvet/vhdldep &&
# check files
echo files54 >&2 && test -d ~/.local/share/gitpack/ &&
echo files55 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files56 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files57 >&2 && test -r ~/.local/share/gitpack/status &&
echo files58 >&2 && test -w ~/.local/share/gitpack/status &&
echo files59 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files60 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files61 >&2 && test -d ~/.cache/gitpack/ &&
echo files62 >&2 && test -d ~/.cache/gitpack/repo/ &&
echo files63 >&2 && test -d ~/.cache/gitpack/repo/github.com/ &&
echo files64 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/ &&
echo files65 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/vhdldep/ &&
echo files66 >&2 && test ! -e ~/.local/bin/vhdldep &&

# intentionally bad URL
echo files67 >&2 && ! gitpack status github.com/a/b/c 2>&1 &&
# check files
echo files68 >&2 && test -d ~/.local/share/gitpack/ &&
echo files69 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files70 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files71 >&2 && test -r ~/.local/share/gitpack/status &&
echo files72 >&2 && test -w ~/.local/share/gitpack/status &&
echo files73 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files74 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files75 >&2 && test -d ~/.cache/gitpack/ &&
echo files76 >&2 && test -d ~/.cache/gitpack/repo/ &&
echo files77 >&2 && test -d ~/.cache/gitpack/repo/github.com/ &&
echo files78 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/ &&
echo files79 >&2 && test -d ~/.cache/gitpack/repo/github.com/dominiksalvet/vhdldep/ &&
echo files80 >&2 && test ! -d ~/.cache/gitpack/repo/a/ &&

# clean cache again
echo files81 >&2 && rm ~/.local/share/gitpack/status && # should be recovered from a backup
echo files82 >&2 && gitpack clean &&
# check files
echo files83 >&2 && test -d ~/.local/share/gitpack/ &&
echo files84 >&2 && test -r ~/.local/share/gitpack/gitpack.log &&
echo files85 >&2 && test -w ~/.local/share/gitpack/gitpack.log &&
echo files86 >&2 && test -r ~/.local/share/gitpack/status &&
echo files87 >&2 && test -w ~/.local/share/gitpack/status &&
echo files88 >&2 && test -r ~/.local/share/gitpack/status.bak &&
echo files89 >&2 && test -w ~/.local/share/gitpack/status.bak &&
echo files90 >&2 && test ! -d ~/.cache/gitpack/
