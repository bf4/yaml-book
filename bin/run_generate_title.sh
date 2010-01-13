#!/bin/sh
set -x
url=programming-scala.labs.oreilly.com
if [ $# -ne 0 ] ; then
    url=$1
fi
wget --cookies=on --keep-session-cookies --save-cookies=/tmp/run_generate_title_cookies.txt --post-data="username=admin&password=openfeedbackatoreilly" --quiet -O /dev/null "http://$url/signin"
wget --cookies=on --load-cookies=/tmp/run_generate_title_cookies.txt --keep-session-cookies  --post-data="" --quiet -O /dev/null "http://$url/admin/update-title"
