#!/bin/sh

#-------------------------------------------------------------------------------
# Copyright 2019 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://github.com/dominiksalvet/gitpack
#-------------------------------------------------------------------------------

# check basic functions
gitpack about &&
gitpack help &&
gitpack clean &&

# install an example project, vhdldep, in version 2.1.0 (not the latest release)
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[nothing\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[install\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[installed\]' &&
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[ok\]' &&
gitpack_out="$(gitpack list)" &&
echo "$gitpack_out" | grep -F 'github.com/dominiksalvet/vhdldep' &&

# update to the latest version
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[older\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[update\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[installed\]' &&
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[ok\]' &&
gitpack_out="$(gitpack list)" &&
echo "$gitpack_out" | grep -F 'github.com/dominiksalvet/vhdldep' &&

# downgrade back to 2.1.0
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[newer\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[downgrade\]' &&
gitpack_out="$(gitpack install github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[installed\]' &&
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep=2.1.0)" &&
echo "$gitpack_out" | grep '^\[ok\]' &&
gitpack_out="$(gitpack list)" &&
echo "$gitpack_out" | grep -F 'github.com/dominiksalvet/vhdldep' &&

# uninstall vhdldep
gitpack_out="$(gitpack uninstall github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[uninstall\]' &&
gitpack_out="$(gitpack uninstall github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[uninstalled\]' &&
gitpack_out="$(gitpack status github.com/dominiksalvet/vhdldep)" &&
echo "$gitpack_out" | grep '^\[nothing\]' &&
gitpack clean