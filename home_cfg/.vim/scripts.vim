" if file type was not detected, use shebang to select one
if !did_filetype()
  if getline(1) =~# '^#!/bin/bash\>'
    setfiletype bash
  elseif getline(1) =~# '^#!/bin/env\s\+bash\>'
    setfiletype bash
  elseif getline(1) =~# '^#!/usr/bin/env\s\+bash\>'
    setfiletype bash
  elseif getline(1) =~# '^#!/usr/bin/awk\>'
    setfiletype awk
  endif
endif
