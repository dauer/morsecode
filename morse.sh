# !/bin/sh

WORDS=0

for x in `cat`
do
    if [ $WORDS -gt 0 ]; then
        echo -n '//'
    fi
    echo $x | fold -w1 | sed -f alphabet-morse.sed | tr '\n' '/';
    let WORDS=WORDS+1;
done

echo '';
