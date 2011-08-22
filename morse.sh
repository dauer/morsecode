# !/bin/sh

WORDS=0
STR=''

for x in `cat`
do
    if [ $WORDS -gt 0 ]; then
        echo -n '/'
    fi
    x=`echo $x | tr -cd '[[a-zA-z0-9]]'`
    x=`echo $x | tr '[:lower:]' '[:upper:]'`
    STR=$STR`echo $x | fold -w1 | sed -f alphabet-morse.sed | tr '\n' '/'`;
    let WORDS=WORDS+1;
done

echo ${STR%\/}
