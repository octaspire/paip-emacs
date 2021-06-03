#!/bin/bash
# Copyright (c) 2021 octaspire.com
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
WDIR=$(pwd)
CHAP=$(printf "%02d" $1)
FILE="${WDIR}/chapters/ch${CHAP}.lisp"
echo "Loading chapter ${CHAP}, file ${FILE}"
EMACS=emacs
EMACSCLIENT=emacsclient
OS=$(uname)
SLEEPDUR=10

if [ "$OS" = "Darwin" ]; then
    EMACS_SERVER_ON=$(lsof | grep Emacs | grep server)
else
    EMACS_SERVER_ON=$(fstat | grep emacs | grep server)
fi
PROGRAM="(progn                                                     \
           (find-file \"${FILE}\")                                  \
           (end-of-buffer)                                          \
           (slime)                                                  \
           (while (not (slime-connected-p)) (sleep-for 0.5))        \
           (slime-repl-eval-string                                  \
             \"(progn (declaim (optimize (speed 0) (debug 3)))      \
                      (load \\\"${FILE}\\\"))\"))"

if [ -z "${EMACS_SERVER_ON}" ]; then
    printf "\nStarting daemon...\n"
    ${EMACS} --daemon > /dev/null
    sleep ${SLEEPDUR}
fi

printf "\nStarting client...\n"
${EMACSCLIENT} --eval "$PROGRAM" > /dev/null
