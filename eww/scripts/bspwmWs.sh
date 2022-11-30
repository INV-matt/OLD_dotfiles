#!/bin/sh
workspaces() {

ws1="1"
ws2="2"
ws3="3"
ws4="4"
ws5="5"
ws6="6"
ws7="7"
ws8="8"
ws9="9"
ws10="10"


# Unoccupied
un="0"

# check if Occupied
o1=$(bspc query -D -d .occupied --names | grep "$ws1" )
o2=$(bspc query -D -d .occupied --names | grep "$ws2" )
o3=$(bspc query -D -d .occupied --names | grep "$ws3" )
o4=$(bspc query -D -d .occupied --names | grep "$ws4" )
o5=$(bspc query -D -d .occupied --names | grep "$ws5" )
o6=$(bspc query -D -d .occupied --names | grep "$ws6" )
o7=$(bspc query -D -d .occupied --names | grep "$ws7" )
o8=$(bspc query -D -d .occupied --names | grep "$ws8" )
o9=$(bspc query -D -d .occupied --names | grep "$ws9" )
o10=$(bspc query -D -d .occupied --names | grep "$ws10" )

# check if Focused
f1=$(bspc query -D -d focused --names | grep "$ws1" )
f2=$(bspc query -D -d focused --names | grep "$ws2" )
f3=$(bspc query -D -d focused --names | grep "$ws3" )
f4=$(bspc query -D -d focused --names | grep "$ws4" )
f5=$(bspc query -D -d focused --names | grep "$ws5" )
f6=$(bspc query -D -d focused --names | grep "$ws6" )
f7=$(bspc query -D -d focused --names | grep "$ws7" )
f8=$(bspc query -D -d focused --names | grep "$ws8" )
f9=$(bspc query -D -d focused --names | grep "$ws9" )
f10=$(bspc query -D -d focused --names | grep "$ws10" )

ic_1=""
ic_2=""
ic_3=""
ic_4=""
ic_5=""
ic_6=""
ic_7=""
ic_8=""
ic_9=""
ic_10=""

if [ $f1 ]; then
    ic_1=""
elif [ $f2 ]; then
    ic_2=""
elif [ $f3 ]; then
    ic_3=""
elif [ $f4 ]; then
    ic_4=""
elif [ $f5 ]; then
    ic_5=""
elif [ $f6 ]; then
    ic_6=""
elif [ $f7 ]; then
    ic_7=""
elif [ $f8 ]; then
    ic_8=""
elif [ $f9 ]; then
    ic_9=""
fi

echo 	"(box	:class \"works\" :spacing \"-1\" :orientation \"v\" :halign \"center\" :space-evenly \"false\" (eventbox :onclick \"bspc desktop -f $ws1\"	:class	\"$un$o1$f1\"	\"$ic_1\") (eventbox :onclick \"bspc desktop -f $ws2\"	:class \"$un$o2$f2\"	 \"$ic_2\") (eventbox :onclick \"bspc desktop -f $ws3\"	:class \"$un$o3$f3\" \"$ic_3\") (eventbox :onclick \"bspc desktop -f $ws4\"	:class \"$un$o4$f4\"	\"$ic_4\") (eventbox :onclick \"bspc desktop -f $ws5\"	:class \"$un$o5$f5\" \"$ic_5\")  (eventbox :onclick \"bspc desktop -f $ws6\"	:class \"$un$o6$f6\" \"$ic_6\") (eventbox :onclick \"bspc desktop -f $ws7\"	:class \"$un$o7$f7\" \"$ic_7\") (eventbox :onclick \"bspc desktop -f $ws8\"	:class \"$un$o8$f8\"	\"$ic_8\") (eventbox :onclick \"bspc desktop -f $ws9\"	:class \"$un$o9$f9\"	\"$ic_9\"))"

}
workspaces
bspc subscribe all | while read -r _ ; do
workspaces
done