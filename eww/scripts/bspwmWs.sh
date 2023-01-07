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

ic_1="  I "
ic_2=" II "
ic_3=" III"
ic_4=" IV "
ic_5="  V "
ic_6=" VI "
ic_7=" VII"
ic_8="VIII"
ic_9=" IX "
ic_10="  X "

cl_1="nf"
cl_2="nf"
cl_3="nf"
cl_4="nf"
cl_5="nf"
cl_6="nf"
cl_7="nf"
cl_8="nf"
cl_9="nf"
cl_10="nf"

# if [ $f1 ]; then
#     ic_1=""
# elif [ $f2 ]; then
#     ic_2=""
# elif [ $f3 ]; then
#     ic_3=""
# elif [ $f4 ]; then
#     ic_4=""
# elif [ $f5 ]; then
#     ic_5=""
# elif [ $f6 ]; then
#     ic_6=""
# elif [ $f7 ]; then
#     ic_7=""
# elif [ $f8 ]; then
#     ic_8=""
# elif [ $f9 ]; then
#     ic_9=""
# fi

if [ $f1 ]; then
    cl_1="focused"
elif [ $f2 ]; then
    cl_2="focused"
elif [ $f3 ]; then
    cl_3="focused"
elif [ $f4 ]; then
    cl_4="focused"
elif [ $f5 ]; then
    cl_5="focused"
elif [ $f6 ]; then
    cl_6="focused"
elif [ $f7 ]; then
    cl_7="focused"
elif [ $f8 ]; then
    cl_8="focused"
elif [ $f9 ]; then
    cl_9="focused"
fi


echo 	"(box	:class \"works\" :spacing \"4\" :orientation \"h\" :halign \"center\" :valign \"fill\" :space-evenly \"false\" :vexpand \"true\" (eventbox :onclick \"bspc desktop -f $ws1\"	:class	\"$cl_1\"	\"$ic_1\") (eventbox :onclick \"bspc desktop -f $ws2\"	:class \"$cl_2\"	 \"$ic_2\") (eventbox :onclick \"bspc desktop -f $ws3\"	:class \"$cl_3\" \"$ic_3\") (eventbox :onclick \"bspc desktop -f $ws4\"	:class \"$cl_4\"	\"$ic_4\") (eventbox :onclick \"bspc desktop -f $ws5\"	:class \"$cl_5\" \"$ic_5\")  (eventbox :onclick \"bspc desktop -f $ws6\"	:class \"$cl_6\" \"$ic_6\") (eventbox :onclick \"bspc desktop -f $ws7\"	:class \"$cl_7\" \"$ic_7\") (eventbox :onclick \"bspc desktop -f $ws8\"	:class \"$cl_8\"	\"$ic_8\") (eventbox :onclick \"bspc desktop -f $ws9\"	:class \"$cl_9\"	\"$ic_9\"))"
#echo 	"(box	:class \"works\" :spacing \"-1\" :orientation \"v\" :halign \"center\" :space-evenly \"false\" (eventbox :onclick \"bspc desktop -f $ws1\"	(label :class	\"$cl_1\"	:text \"$ic_1\")) (eventbox :onclick \"bspc desktop -f $ws2\"	(label :class \"$cl_2\"	 :text \"$ic_2\")) (eventbox :onclick \"bspc desktop -f $ws3\"	(label :class \"$cl_3\" :text \"$ic_3\")) (eventbox :onclick \"bspc desktop -f $ws4\"	(label :class \"$cl_4\"	:text \"$ic_4\")) (eventbox :onclick \"bspc desktop -f $ws5\"	(label :class \"$cl_5\" :text \"$ic_5\"))  (eventbox :onclick \"bspc desktop -f $ws6\"	(label :class \"$cl_6\" :text \"$ic_6\")) (eventbox :onclick \"bspc desktop -f $ws7\"	(label :class \"$cl_7\" :text \"$ic_7\")) (eventbox :onclick \"bspc desktop -f $ws8\"	(label :class \"$cl_8\"	:text \"$ic_8\")) (eventbox :onclick \"bspc desktop -f $ws9\"	(label :class \"$cl_9\"	:text \"$ic_9\")))"

}
workspaces
bspc subscribe all | while read -r _ ; do
workspaces
done