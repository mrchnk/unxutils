#!/bin/sh
# This debugging script has been automatically generated from `make check'.
# Call it with `--help' to get a quick usage summary.

at_package=recode
at_version=3.6
at_verbose=1
at_n=-n
at_c=''
test -f atlocal && . ./atlocal

# LC_MESSAGES is always shadowed by LC_ALL.  Here are the only cases:
# - GNU:       LANGUAGE -> LC_ALL -> LC_MESSAGES -> LANG
# - POSIX:     LC_ALL -> LC_MESSAGES -> LANG
# - XPG4:      LC_ALL -> LANG
# - SysV/XPG2: LANG
export LANGUAGE; LANGUAGE=C
export LANG; LANG=C
export LC_ALL; LC_ALL=C

srcdir=.
top_srcdir=..
# Use absolute file notations, as the test might change directories.
at_srcdir=`cd . && pwd`
at_top_srcdir=`cd .. && pwd`
if test -n "../src"; then
  export PATH; PATH=`pwd`:`cd ../src && pwd`:$PATH
else
  export PATH; PATH=`pwd`:$PATH
fi

at_usage="Usage: $0 OPTION...

  -e  Abort the full suite and inhibit normal clean up if a test fails
  -n  Do not redirect stdout and stderr and do not test their contents
  -s  Inhibit verbosity while generating or executing debugging scripts
  -v  Force more detailed output, default for debugging scripts unless -s
  -x  Have the shell to trace command execution; also implies option -n"

while test $# -gt 0; do
  case "$1" in
    --help) echo "$at_usage"; exit 0 ;;
    --version) echo "$0 ($at_package) $at_version"; exit 0 ;;
    -e) at_stop_on_error=1; shift ;;
    -n) at_no_redirs=1; shift ;;
    -s) at_verbose=; at_silent=1; shift ;;
    -v) at_verbose=1; at_silent=; shift ;;
    -x) at_traceon='set -vx'; at_traceoff='set +vx'; at_no_redirs=1; shift ;;
    *) echo 1>&2 "Try \`$0 --help' for more information."; exit 1 ;;
  esac
done

# In the testing suite, we only want to know if the test succeeded or failed.
# But in debugging scripts, we want more information, so we prefer `diff -u'
# to the silent `cmp', even if it may happen that we compare binary files.
# Option `-u' might be less portable, so either change it or use GNU `diff'.

if test -n "$at_verbose"; then
  at_diff='diff -u'
else
  if test -n "$COMSPEC$ComSpec"; then
    at_diff='diff -u'
  else
    at_diff='cmp -s'
  fi
fi

# Each generated debugging script, containing a single test group, cleans
# up files at the beginning only, not at the end.  This is so we can repeat
# the script many times and browse left over files.  To cope with such left
# over files, the full test suite cleans up both before and after test groups.

rm -rf input output stdout stderr
if test -n "$at_verbose"; then
  at_banner="$0: Testing single lines to Hexadecimal-2"
  at_dashes=`echo $at_banner | sed s/./=/g`
  echo
  echo "$at_dashes"
  echo "$at_banner"
  echo "$at_dashes"
fi

# Testing single lines to Hexadecimal-2
# starting from `dumps.m4:353'.
$at_traceon

$at_traceoff
test -n "$at_verbose" \
  && echo "$srcdir/dumps.m4:381: testing..."
echo dumps.m4:381 > at-check-line
test -z "$at_no_redirs" && exec 5>&1 6>&2 1>stdout 2>stderr
$at_traceon
( while read line; do echo $line | recode ../x2 || exit 1; done
) < $at_srcdir/dumps-data

at_status=$?
if test $at_status != 0; then
  test -n "$at_verbose" && test -z "$at_no_redirs" && cat stderr >&6
  exit $at_status
fi
$at_traceoff
if test -z "$at_no_redirs"; then
  exec 1>&5 2>&6
  echo $at_n "0x0A
0x610A
0x6162, 0x0A
0x6162, 0x630A
0x6162, 0x6364, 0x0A
0x6162, 0x6364, 0x6566, 0x6768, 0x690A
0x6162, 0x6364, 0x6566, 0x6768, 0x696A, 0x6B6C, 0x6D6E, 0x6F70,
0x7172, 0x730A
0x6162, 0x6364, 0x6566, 0x6768, 0x696A, 0x6B6C, 0x6D6E, 0x6F70,
0x7172, 0x7374, 0x7576, 0x777A, 0x797A, 0x4142, 0x430A
0x6162, 0x6364, 0x6566, 0x6768, 0x696A, 0x6B6C, 0x6D6E, 0x6F70,
0x7172, 0x7374, 0x7576, 0x777A, 0x797A, 0x4142, 0x4344, 0x4546,
0x4748, 0x494A, 0x4B4C, 0x4D0A
0x6162, 0x6364, 0x6566, 0x6768, 0x696A, 0x6B6C, 0x6D6E, 0x6F70,
0x7172, 0x7374, 0x7576, 0x777A, 0x797A, 0x4142, 0x4344, 0x4546,
0x4748, 0x494A, 0x4B4C, 0x4D4E, 0x4F50, 0x5152, 0x5354, 0x5556,
0x570A
0x6162, 0x6364, 0x6566, 0x6768, 0x696A, 0x6B6C, 0x6D6E, 0x6F70,
0x7172, 0x7374, 0x7576, 0x777A, 0x797A, 0x4142, 0x4344, 0x4546,
0x4748, 0x494A, 0x4B4C, 0x4D4E, 0x4F50, 0x5152, 0x5354, 0x5556,
0x5758, 0x595A, 0x3031, 0x3233, 0x3435, 0x360A
$at_c" | $at_diff - stdout || exit 1
  $at_diff /dev/null stderr || exit 1
fi
$at_traceon

$at_traceoff
exit 0
