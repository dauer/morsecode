# !/bin/sh

WORDS=0
STR=''
ALPHA=`dirname $0`/alphabet-morse.sed
for x in `cat`
do
    if [ $WORDS -gt 0 ]; then
        echo -n '/'
    fi
    x=`echo $x | tr -cd '[[a-zA-z0-9]]'`
    x=`echo $x | tr '[:lower:]' '[:upper:]'`
    STR=$STR`echo $x | fold -w1 | sed -f $ALPHA | tr '\n' '/'`;
    let WORDS=WORDS+1;
done

echo ${STR%\/}
