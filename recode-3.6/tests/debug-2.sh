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

rm -rf stdout stderr expout
if test -n "$at_verbose"; then
  at_banner="$0: Testing the --find-subsets option"
  at_dashes=`echo $at_banner | sed s/./=/g`
  echo
  echo "$at_dashes"
  echo "$at_banner"
  echo "$at_dashes"
fi

# Testing the --find-subsets option
# starting from `names.m4:294'.
$at_traceon

cat >expout <<'EOF'
[  0] ANSI_X3.4-1968 == IBM891
[  0] ANSI_X3.4-1968 == IBM903
[  0] IBM891 == ANSI_X3.4-1968
[  0] IBM891 == IBM903
[  0] IBM903 == ANSI_X3.4-1968
[  0] IBM903 == IBM891
[  3] ANSI_X3.4-1968 < IBM904
[  3] IBM891 < IBM904
[  3] IBM903 < IBM904
[  3] JIS_C6229-1984-hand-add < JIS_C6229-1984-b-add
[  4] IBM1004 < CP1252
[  6] INVARIANT < T.61-7bit
[  6] T.61-7bit < ISO_646.irv
[ 10] INVARIANT < JIS_C6229-1984-b
[ 12] INVARIANT < ANSI_X3.4-1968
[ 12] INVARIANT < BS_4730
[ 12] INVARIANT < CSA_Z243.4-1985-1
[ 12] INVARIANT < CSA_Z243.4-1985-2
[ 12] INVARIANT < DIN_66003
[ 12] INVARIANT < DS_2089
[ 12] INVARIANT < ES
[ 12] INVARIANT < ES2
[ 12] INVARIANT < GB_1988-80
[ 12] INVARIANT < IBM891
[ 12] INVARIANT < IBM903
[ 12] INVARIANT < ISO_646.irv
[ 12] INVARIANT < IT
[ 12] INVARIANT < JIS_C6220-1969-ro
[ 12] INVARIANT < JUS_I.B1.002
[ 12] INVARIANT < KSC5636
[ 12] INVARIANT < MSZ_7795.3
[ 12] INVARIANT < NATS-SEFI
[ 12] INVARIANT < NC_NC00-10
[ 12] INVARIANT < NF_Z_62-010
[ 12] INVARIANT < NF_Z_62-010_(1973)
[ 12] INVARIANT < NS_4551-1
[ 12] INVARIANT < NS_4551-2
[ 12] INVARIANT < PT
[ 12] INVARIANT < PT2
[ 12] INVARIANT < SEN_850200_B
[ 12] INVARIANT < SEN_850200_C
[ 12] JIS_C6229-1984-kana < JIS_C6220-1969-jp
[ 13] INIS < ANSI_X3.4-1968
[ 13] INIS < BS_4730
[ 13] INIS < IBM891
[ 13] INIS < IBM903
[ 13] INIS < JIS_C6220-1969-ro
[ 13] INIS < KSC5636
[ 15] INVARIANT < IBM904
[ 16] INIS < IBM904
[ 28] GOST_19768-87 < ISO-8859-5
[ 28] JIS_C6229-1984-hand < JIS_C6229-1984-b
[ 33] ISO_646.basic < INVARIANT
[ 39] ISO_646.basic < T.61-7bit
[ 43] ISO_646.basic < JIS_C6229-1984-b
[ 45] ISO_646.basic < ANSI_X3.4-1968
[ 45] ISO_646.basic < BS_4730
[ 45] ISO_646.basic < CSA_Z243.4-1985-1
[ 45] ISO_646.basic < CSA_Z243.4-1985-2
[ 45] ISO_646.basic < DIN_66003
[ 45] ISO_646.basic < DS_2089
[ 45] ISO_646.basic < ES
[ 45] ISO_646.basic < ES2
[ 45] ISO_646.basic < GB_1988-80
[ 45] ISO_646.basic < IBM891
[ 45] ISO_646.basic < IBM903
[ 45] ISO_646.basic < ISO_646.irv
[ 45] ISO_646.basic < IT
[ 45] ISO_646.basic < JIS_C6220-1969-ro
[ 45] ISO_646.basic < JUS_I.B1.002
[ 45] ISO_646.basic < KSC5636
[ 45] ISO_646.basic < MSZ_7795.3
[ 45] ISO_646.basic < NATS-SEFI
[ 45] ISO_646.basic < NC_NC00-10
[ 45] ISO_646.basic < NF_Z_62-010
[ 45] ISO_646.basic < NF_Z_62-010_(1973)
[ 45] ISO_646.basic < NS_4551-1
[ 45] ISO_646.basic < NS_4551-2
[ 45] ISO_646.basic < PT
[ 45] ISO_646.basic < PT2
[ 45] ISO_646.basic < SEN_850200_B
[ 45] ISO_646.basic < SEN_850200_C
[ 48] ISO_646.basic < IBM904
[ 57] EBCDIC-US < IBM424
[ 61] ANSI_X3.4-1968 < ISO_10367-box
[ 61] IBM891 < ISO_10367-box
[ 61] IBM903 < ISO_10367-box
[ 63] ANSI_X3.4-1968 < KOI-8
[ 63] IBM891 < KOI-8
[ 63] IBM903 < KOI-8
[ 64] T.61-7bit < ISO_6937-2-25
[ 65] KOI-8 < ECMA-cyrillic
[ 65] KOI-8 < KOI8-R
[ 65] KOI-8 < KOI8-RU
[ 66] ANSI_X3.4-1968 < sami
[ 66] IBM891 < sami
[ 66] IBM903 < sami
[ 70] INVARIANT < ISO_6937-2-25
[ 73] INVARIANT < ISO_10367-box
[ 74] INIS < ISO_10367-box
[ 75] INVARIANT < KOI-8
[ 76] INIS < KOI-8
[ 78] ANSI_X3.4-1968 < CP1255
[ 78] IBM891 < CP1255
[ 78] IBM903 < CP1255
[ 78] INVARIANT < sami
[ 79] INIS < sami
[ 83] ANSI_X3.4-1968 < ISO-8859-6
[ 83] IBM891 < ISO-8859-6
[ 83] IBM903 < ISO-8859-6
[ 90] ANSI_X3.4-1968 < ISO-8859-8
[ 90] IBM891 < ISO-8859-8
[ 90] IBM903 < ISO-8859-8
[ 90] INVARIANT < CP1255
[ 91] INIS < CP1255
[ 95] INVARIANT < ISO-8859-6
[ 95] JIS_C6220-1969-ro < JIS_X0201
[ 96] EBCDIC-AT-DE < IBM273
[ 96] EBCDIC-DK-NO < IBM277
[ 96] EBCDIC-IT < IBM280
[ 96] EBCDIC-UK < IBM285
[ 96] EBCDIC-US < IBM037
[ 96] IBM038 < IBM256
[ 96] IBM038 < IBM500
[ 96] INIS < ISO-8859-6
[100] ANSI_X3.4-1968 < GOST_19768-87
[100] IBM891 < GOST_19768-87
[100] IBM903 < GOST_19768-87
[102] INVARIANT < ISO-8859-8
[103] ANSI_X3.4-1968 < IBM868
[103] IBM891 < IBM868
[103] IBM903 < IBM868
[103] INIS < ISO-8859-8
[103] ISO_646.basic < ISO_6937-2-25
[106] ISO_646.basic < ISO_10367-box
[107] INVARIANT < JIS_X0201
[108] INIS < JIS_X0201
[108] ISO_646.basic < KOI-8
[109] ANSI_X3.4-1968 < CP1257
[109] IBM891 < CP1257
[109] IBM903 < CP1257
[111] ANSI_X3.4-1968 < CP1253
[111] IBM891 < CP1253
[111] IBM903 < CP1253
[111] ISO_646.basic < sami
[112] ANSI_X3.4-1968 < KOI8-U
[112] IBM891 < KOI8-U
[112] IBM903 < KOI8-U
[112] INVARIANT < GOST_19768-87
[113] ANSI_X3.4-1968 < DEC-MCS
[113] IBM891 < DEC-MCS
[113] IBM903 < DEC-MCS
[113] INIS < GOST_19768-87
[115] INVARIANT < IBM868
[116] INIS < IBM868
[119] ANSI_X3.4-1968 < IBM1004
[119] ANSI_X3.4-1968 < IBM869
[119] IBM891 < IBM1004
[119] IBM891 < IBM869
[119] IBM903 < IBM1004
[119] IBM903 < IBM869
[121] ANSI_X3.4-1968 < CP1254
[121] ANSI_X3.4-1968 < ISO-8859-3
[121] ANSI_X3.4-1968 < NeXTSTEP
[121] IBM891 < CP1254
[121] IBM891 < ISO-8859-3
[121] IBM891 < NeXTSTEP
[121] IBM903 < CP1254
[121] IBM903 < ISO-8859-3
[121] IBM903 < NeXTSTEP
[121] INVARIANT < CP1257
[122] ANSI_X3.4-1968 < ISO-8859-7
[122] ANSI_X3.4-1968 < ISO_8859-supp
[122] IBM891 < ISO-8859-7
[122] IBM891 < ISO_8859-supp
[122] IBM903 < ISO-8859-7
[122] IBM903 < ISO_8859-supp
[122] INIS < CP1257
[123] ANSI_X3.4-1968 < CP1250
[123] ANSI_X3.4-1968 < CP1252
[123] ANSI_X3.4-1968 < IBM864
[123] IBM891 < CP1250
[123] IBM891 < CP1252
[123] IBM891 < IBM864
[123] IBM903 < CP1250
[123] IBM903 < CP1252
[123] IBM903 < IBM864
[123] INVARIANT < CP1253
[123] ISO_646.basic < CP1255
[124] INIS < CP1253
[124] INVARIANT < KOI8-U
[125] ANSI_X3.4-1968 < IBM857
[125] IBM891 < IBM857
[125] IBM903 < IBM857
[125] INIS < KOI8-U
[125] INVARIANT < DEC-MCS
[126] ANSI_X3.4-1968 < CP1256
[126] ANSI_X3.4-1968 < mac-is
[126] ANSI_X3.4-1968 < macintosh
[126] IBM891 < CP1256
[126] IBM891 < mac-is
[126] IBM891 < macintosh
[126] IBM903 < CP1256
[126] IBM903 < mac-is
[126] IBM903 < macintosh
[126] INIS < DEC-MCS
[127] ANSI_X3.4-1968 < CP1251
[127] ANSI_X3.4-1968 < IBM851
[127] ANSI_X3.4-1968 < IBM855
[127] ANSI_X3.4-1968 < IBM861
[127] ANSI_X3.4-1968 < IBM862
[127] ANSI_X3.4-1968 < hp-roman8
[127] IBM891 < CP1251
[127] IBM891 < IBM851
[127] IBM891 < IBM855
[127] IBM891 < IBM861
[127] IBM891 < IBM862
[127] IBM891 < hp-roman8
[127] IBM903 < CP1251
[127] IBM903 < IBM851
[127] IBM903 < IBM855
[127] IBM903 < IBM861
[127] IBM903 < IBM862
[127] IBM903 < hp-roman8
[128] ANSI_X3.4-1968 < AtariST
[128] ANSI_X3.4-1968 < CSA_Z243.4-1985-gr
[128] ANSI_X3.4-1968 < CWI
[128] ANSI_X3.4-1968 < ECMA-cyrillic
[128] ANSI_X3.4-1968 < IBM437
[128] ANSI_X3.4-1968 < IBM850
[128] ANSI_X3.4-1968 < IBM852
[128] ANSI_X3.4-1968 < IBM860
[128] ANSI_X3.4-1968 < IBM863
[128] ANSI_X3.4-1968 < IBM865
[128] ANSI_X3.4-1968 < IEC_P27-1
[128] ANSI_X3.4-1968 < ISO-8859-1
[128] ANSI_X3.4-1968 < ISO-8859-10
[128] ANSI_X3.4-1968 < ISO-8859-13
[128] ANSI_X3.4-1968 < ISO-8859-14
[128] ANSI_X3.4-1968 < ISO-8859-15
[128] ANSI_X3.4-1968 < ISO-8859-2
[128] ANSI_X3.4-1968 < ISO-8859-4
[128] ANSI_X3.4-1968 < ISO-8859-5
[128] ANSI_X3.4-1968 < ISO-8859-9
[128] ANSI_X3.4-1968 < KOI8-R
[128] ANSI_X3.4-1968 < KOI8-RU
[128] ANSI_X3.4-1968 < baltic
[128] ANSI_X3.4-1968 < macintosh_ce
[128] IBM891 < AtariST
[128] IBM891 < CSA_Z243.4-1985-gr
[128] IBM891 < CWI
[128] IBM891 < ECMA-cyrillic
[128] IBM891 < IBM437
[128] IBM891 < IBM850
[128] IBM891 < IBM852
[128] IBM891 < IBM860
[128] IBM891 < IBM863
[128] IBM891 < IBM865
[128] IBM891 < IEC_P27-1
[128] IBM891 < ISO-8859-1
[128] IBM891 < ISO-8859-10
[128] IBM891 < ISO-8859-13
[128] IBM891 < ISO-8859-14
[128] IBM891 < ISO-8859-15
[128] IBM891 < ISO-8859-2
[128] IBM891 < ISO-8859-4
[128] IBM891 < ISO-8859-5
[128] IBM891 < ISO-8859-9
[128] IBM891 < KOI8-R
[128] IBM891 < KOI8-RU
[128] IBM891 < baltic
[128] IBM891 < macintosh_ce
[128] IBM903 < AtariST
[128] IBM903 < CSA_Z243.4-1985-gr
[128] IBM903 < CWI
[128] IBM903 < ECMA-cyrillic
[128] IBM903 < IBM437
[128] IBM903 < IBM850
[128] IBM903 < IBM852
[128] IBM903 < IBM860
[128] IBM903 < IBM863
[128] IBM903 < IBM865
[128] IBM903 < IEC_P27-1
[128] IBM903 < ISO-8859-1
[128] IBM903 < ISO-8859-10
[128] IBM903 < ISO-8859-13
[128] IBM903 < ISO-8859-14
[128] IBM903 < ISO-8859-15
[128] IBM903 < ISO-8859-2
[128] IBM903 < ISO-8859-4
[128] IBM903 < ISO-8859-5
[128] IBM903 < ISO-8859-9
[128] IBM903 < KOI8-R
[128] IBM903 < KOI8-RU
[128] IBM903 < baltic
[128] IBM903 < macintosh_ce
[128] ISO_646.basic < ISO-8859-6
[131] INVARIANT < IBM1004
[131] INVARIANT < IBM869
[132] INIS < IBM1004
[132] INIS < IBM869
[133] INVARIANT < CP1254
[133] INVARIANT < ISO-8859-3
[133] INVARIANT < NeXTSTEP
[134] INIS < CP1254
[134] INIS < ISO-8859-3
[134] INIS < NeXTSTEP
[134] INVARIANT < ISO-8859-7
[134] INVARIANT < ISO_8859-supp
[134] T.61-7bit < CSN_369103
[135] INIS < ISO-8859-7
[135] INIS < ISO_8859-supp
[135] INVARIANT < CP1250
[135] INVARIANT < CP1252
[135] INVARIANT < IBM864
[135] ISO_646.basic < ISO-8859-8
[136] INIS < CP1250
[136] INIS < CP1252
[136] INIS < IBM864
[137] INVARIANT < IBM857
[138] INIS < IBM857
[138] INVARIANT < CP1256
[138] INVARIANT < mac-is
[138] INVARIANT < macintosh
[139] INIS < CP1256
[139] INIS < mac-is
[139] INIS < macintosh
[139] INVARIANT < CP1251
[139] INVARIANT < IBM851
[139] INVARIANT < IBM855
[139] INVARIANT < IBM861
[139] INVARIANT < IBM862
[139] INVARIANT < hp-roman8
[140] INIS < CP1251
[140] INIS < IBM851
[140] INIS < IBM855
[140] INIS < IBM861
[140] INIS < IBM862
[140] INIS < hp-roman8
[140] INVARIANT < AtariST
[140] INVARIANT < CSA_Z243.4-1985-gr
[140] INVARIANT < CSN_369103
[140] INVARIANT < CWI
[140] INVARIANT < ECMA-cyrillic
[140] INVARIANT < IBM437
[140] INVARIANT < IBM850
[140] INVARIANT < IBM852
[140] INVARIANT < IBM860
[140] INVARIANT < IBM863
[140] INVARIANT < IBM865
[140] INVARIANT < IEC_P27-1
[140] INVARIANT < ISO-8859-1
[140] INVARIANT < ISO-8859-10
[140] INVARIANT < ISO-8859-13
[140] INVARIANT < ISO-8859-14
[140] INVARIANT < ISO-8859-15
[140] INVARIANT < ISO-8859-2
[140] INVARIANT < ISO-8859-4
[140] INVARIANT < ISO-8859-5
[140] INVARIANT < ISO-8859-9
[140] INVARIANT < KOI8-R
[140] INVARIANT < KOI8-RU
[140] INVARIANT < baltic
[140] INVARIANT < macintosh_ce
[140] ISO_646.basic < JIS_X0201
[141] INIS < AtariST
[141] INIS < CSA_Z243.4-1985-gr
[141] INIS < CWI
[141] INIS < ECMA-cyrillic
[141] INIS < IBM437
[141] INIS < IBM850
[141] INIS < IBM852
[141] INIS < IBM860
[141] INIS < IBM863
[141] INIS < IBM865
[141] INIS < IEC_P27-1
[141] INIS < ISO-8859-1
[141] INIS < ISO-8859-10
[141] INIS < ISO-8859-13
[141] INIS < ISO-8859-14
[141] INIS < ISO-8859-15
[141] INIS < ISO-8859-2
[141] INIS < ISO-8859-4
[141] INIS < ISO-8859-5
[141] INIS < ISO-8859-9
[141] INIS < KOI8-R
[141] INIS < KOI8-RU
[141] INIS < baltic
[141] INIS < macintosh_ce
[145] ISO_646.basic < GOST_19768-87
[148] ISO_646.basic < IBM868
[154] ISO_646.basic < CP1257
[156] ISO_646.basic < CP1253
[157] ISO_646.basic < KOI8-U
[158] ISO_646.basic < DEC-MCS
[164] ISO_646.basic < IBM1004
[164] ISO_646.basic < IBM869
[164] ISO_646.basic < VPS
[166] ISO_646.basic < CP1254
[166] ISO_646.basic < ISO-8859-3
[166] ISO_646.basic < NeXTSTEP
[167] ISO_646.basic < ISO-8859-7
[167] ISO_646.basic < ISO_8859-supp
[167] ISO_646.basic < TCVN
[168] ISO_646.basic < CP1250
[168] ISO_646.basic < CP1252
[168] ISO_646.basic < IBM864
[170] ISO_646.basic < IBM857
[171] ISO_646.basic < CP1256
[171] ISO_646.basic < mac-is
[171] ISO_646.basic < macintosh
[172] ISO_646.basic < CP1251
[172] ISO_646.basic < IBM851
[172] ISO_646.basic < IBM855
[172] ISO_646.basic < IBM861
[172] ISO_646.basic < IBM862
[172] ISO_646.basic < hp-roman8
[173] ISO_646.basic < AtariST
[173] ISO_646.basic < CSA_Z243.4-1985-gr
[173] ISO_646.basic < CSN_369103
[173] ISO_646.basic < CWI
[173] ISO_646.basic < ECMA-cyrillic
[173] ISO_646.basic < IBM437
[173] ISO_646.basic < IBM850
[173] ISO_646.basic < IBM852
[173] ISO_646.basic < IBM860
[173] ISO_646.basic < IBM863
[173] ISO_646.basic < IBM865
[173] ISO_646.basic < IEC_P27-1
[173] ISO_646.basic < ISO-8859-1
[173] ISO_646.basic < ISO-8859-10
[173] ISO_646.basic < ISO-8859-13
[173] ISO_646.basic < ISO-8859-14
[173] ISO_646.basic < ISO-8859-15
[173] ISO_646.basic < ISO-8859-2
[173] ISO_646.basic < ISO-8859-4
[173] ISO_646.basic < ISO-8859-5
[173] ISO_646.basic < ISO-8859-9
[173] ISO_646.basic < KOI8-R
[173] ISO_646.basic < KOI8-RU
[173] ISO_646.basic < VISCII
[173] ISO_646.basic < baltic
[173] ISO_646.basic < macintosh_ce
EOF

$at_traceoff
test -n "$at_verbose" \
  && echo "$srcdir/names.m4:745: testing..."
echo names.m4:745 > at-check-line
test -z "$at_no_redirs" && exec 5>&1 6>&2 1>stdout 2>stderr
$at_traceon
recode -T | sort
at_status=$?
if test $at_status != 0; then
  test -n "$at_verbose" && test -z "$at_no_redirs" && cat stderr >&6
  exit $at_status
fi
$at_traceoff
if test -z "$at_no_redirs"; then
  exec 1>&5 2>&6
  $at_diff expout stdout || exit 1
  $at_diff /dev/null stderr || exit 1
fi
$at_traceon

$at_traceoff
exit 0