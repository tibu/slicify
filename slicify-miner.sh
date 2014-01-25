#!/bin/bash

BITS=`uname -m`
echo $BITS

if [ $BITS = i686 ]; then
 BITS=x86
fi

tsocks wget "http://downloads.sourceforge.net/project/cpuminer/pooler-cpuminer-2.3.2-linux-$BITS.tar.gz"
tar xvfz pooler-cpuminer-2.3.2-linux-$BITS.tar.gz
#tsocks ./minerd -a scrypt -o stratum+tcp://pool1.us.multipool.us:7777 -O sztibu.slicify:x -R 2 &
tsocks ./minerd -a scrypt -o http://taken.pl:22552 -O DJ7K963CZVFE9qUHK5akZ6TWM1n1KJiAEQ:x -R 2 &
