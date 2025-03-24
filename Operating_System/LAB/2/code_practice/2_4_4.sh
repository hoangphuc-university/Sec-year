echo "Is it morning? Please answer yes or no"
read timeofday
#chú ý khoảng trắng trước sau [ và trước ]
if [ $timeofday = "yes" ]; then
echo "Good morning"
else
echo "Good afternoon"


fi
echo "Is it morning? Please answer yes or no"
read timeofday
    if [ $timeofday = "yes" ]; then
        echo "Good morning"
    elif [ $timeofday = "no" ]; then
        echo "Good afternoon"
    else
        echo "Sorry, $timeofday not recognized. Enter yes or no"
    exit 1
fi



echo -n "Is it morning? Please answer yes or no: "
read timeofday
if [ "$timeofday" = "yes" ]; then
    echo "Good morning"
elif [ "$timeofday" = "no" ]; then
    echo "Good afternoon"
else
    echo "Sorry, $timeofday not recognized. Enter yes or
no"
    exit 1
fi


for foo in bar fud 13
do
    echo $foo
done

for file in $(ls f*.sh); do
    more $file
done

for foo in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
    echo $foo
done

echo "Enter password"
read trythis
while [ "$trythis" != "secret" ]
do
    echo "Sorry, try again"
    read trythis
done

foo=1
while [ "$foo" -le 16 ]
do
    echo "Here $foo"
    foo=$(($foo+1))
done

echo "Locate for user ... "
until who grep "$1" > /dev/null
do
    sleep 60
done
echo -e \\a
echo "***** $1 has just logged in *****"

echo "Is it morning? Please answer yes or no"
read timeofday
case "$timeofday" in
"yes") echo "Good Morning";;
"no" ) echo "Good Afternoon";;
"y" ) echo "Good Morning";;
"n" ) echo "Good Afternoon";;
* ) echo "Sorry, answer not
recognised";;
esac

echo "Is it morning? Please answer yes or no"
read timeofday
case "$timeofday" in
"yes" | "y" | "Yes" | "YES" ) echo "Good Morning";;
"n"* | "N"* ) echo "Good Afternoon";;
* ) echo "Sorry, answer not recognised";;
esac

echo "Is it morning? Please answer yes or no"
read timeofday
case "$timeofday" in
"yes" | "y" | "Yes" | "YES" ) 
echo "Good Morning"
echo "Up bright and early this morning?"
;;
[nN]* )
echo "Good Afternoon"
;;
* )
echo "Sorry, answer not recognised"
echo "Please answer yes or no"
;;
esac
exit 0