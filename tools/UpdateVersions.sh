#!/bin/bash

BASEFILE="../games/brutaldoom/base.lua"
README="../README.md"

extract_between_quotes() {
	cut -d '"' -f 2
}

extract_parameter() {
	grep "$1"\ = | extract_between_quotes
}

#replace_line LineNumber FileName NewLine
replace_line() {
	sed -i ''"$1"'s/.*/'"$3"'/' $2
}

get_line_number() {
	grep -n "$2" $1 | cut -d : -f 1
}

do_replacement() {
    VERSION=$(cat $BASEFILE | extract_parameter "$2")
    REPLACE=$(get_line_number $README "$1"\ \|)
    
    VERSIONFILE=$VERSION
    VERSIONNAME="$1"
    VERSION=$( echo $VERSION | cut -d . -f 1) 
    VERSIONNUMBER=${VERSION//[!0-9]/}
    
    #This is a terrible hack to deal with the fact that Brutal Doom 64 will always start with the digits 6 and 4
    #If Brutal ever reaches version 640 this will have to be rewritten. I'm banking on that not happening for a while.
    if [ -z "$VERSIONNUMBER" ]
    then
        VERSIONNUMBER=0
    fi
    #in case bd64 ever reaches version 10 or higher
    if (( "$VERSIONNUMBER" > 6400 )) 
    then
        VERSIONNUMBER=$(( $VERSIONNUMBER - 6400 ))
    fi
    if (( "$VERSIONNUMBER" > 640 )) 
    then
        VERSIONNUMBER=$(( $VERSIONNUMBER - 640 ))
    fi
    
    VERSION=$VERSIONNAME\ \|\ $VERSIONNUMBER\ \|\ $VERSIONFILE

    replace_line $REPLACE $README "$VERSION"
}


replace_line 1 $README **The\ curently\ supported\ version\ of\ Brutal\ Doom\ is\ $(cat $BASEFILE | extract_parameter brutalversion)**

do_replacement Brutal\ Doom brutalversion
do_replacement Project\ Brutality brutalityversion

BASEFILE="../modules/eday.lua"
do_replacement Extermination\ Day local\ modversion
BASEFILE="../modules/brutal64.lua"
do_replacement Brutal\ Doom\ 64 local\ modversion
