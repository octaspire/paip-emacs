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
default:
	@etc/latest.sh &

.PHONY: chap01 chap02 chap03 chap04 chap05 chap06 chap07 chap08 chap09 chap10 \
        chap11 chap12 chap13 chap14 chap15 chap16 chap17 chap18 chap19 chap20 \
        chap21 chap22 chap23 chap24 chap25

chap01:
	@etc/slime.sh 1  &
chap02:
	@etc/slime.sh 2  &
chap03:
	@etc/slime.sh 3  &
chap04:
	@etc/slime.sh 4  &
chap05:
	@etc/slime.sh 5  &
chap06:
	@etc/slime.sh 6  &
chap07:
	@etc/slime.sh 7  &
chap08:
	@etc/slime.sh 8  &
chap09:
	@etc/slime.sh 9  &
chap10:
	@etc/slime.sh 10 &
chap11:
	@etc/slime.sh 11 &
chap12:
	@etc/slime.sh 12 &
chap13:
	@etc/slime.sh 13 &
chap14:
	@etc/slime.sh 14 &
chap15:
	@etc/slime.sh 15 &
chap16:
	@etc/slime.sh 16 &
chap17:
	@etc/slime.sh 17 &
chap18:
	@etc/slime.sh 18 &
chap19:
	@etc/slime.sh 19 &
chap20:
	@etc/slime.sh 20 &
chap21:
	@etc/slime.sh 21 &
chap22:
	@etc/slime.sh 22 &
chap23:
	@etc/slime.sh 23 &
chap24:
	@etc/slime.sh 24 &
chap25:
	@etc/slime.sh 25 &

help:
	@echo 'Usage:'
	@echo '  make <target>'
	@echo ''
	@echo 'Default behavior is to find the latest chapter having work in progress.'
	@echo ''
	@echo 'Targets:'
	@echo '  chapNN  start Emacs/slime (if needed) with code for chapter NN loaded'
	@echo '  help    show this help'
