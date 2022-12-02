#!/bin/sh

# Copyright: 2022 Masatake YAMATO
# License: GPL-2

CTAGS=$1

. ../utils.sh
is_feature_available $CTAGS sandbox
is_feature_available ${CTAGS} interactive
is_feature_available ${CTAGS} '!' gcov

echo | $CTAGS --quiet --options=NONE  --_interactive=sandbox \
			  --pseudo-tags=+TAG_PROGRAM_NAME \
			  --pseudo-tags=+TAG_PROGRAM_VERSION &&
echo | $CTAGS --quiet --options=NONE  --_interactive=sandbox \
			  --pseudo-tags=-TAG_PROGRAM_NAME \
			  --pseudo-tags=+TAG_PROGRAM_VERSION &&
echo | $CTAGS --quiet --options=NONE  --_interactive=sandbox \
			  --pseudo-tags=+TAG_PROGRAM_NAME \
			  --pseudo-tags=-TAG_PROGRAM_VERSION
exit $?
