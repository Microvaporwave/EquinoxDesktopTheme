#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#0a0a0b/g' \
         -e 's/rgb(100%,100%,100%)/#edd698/g' \
    -e 's/rgb(50%,0%,0%)/#0a0a0b/g' \
     -e 's/rgb(0%,50%,0%)/#9C3832/g' \
 -e 's/rgb(0%,50.196078%,0%)/#9C3832/g' \
     -e 's/rgb(50%,0%,50%)/#0a0a0b/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#0a0a0b/g' \
     -e 's/rgb(0%,0%,50%)/#a5956a/g' \
	"$@"