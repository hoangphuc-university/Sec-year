echo "Dau ngoac don"
cat $(date;who)
echo "Dau nhay"
echo Logged in 'date' > login.time
echo Logged in Fri May 12:52:25 UTC 2004 > login.time
cat login.time

echo "pipeline"
who | ls -l
(date;who) | ls -l

echo "Dau boc chuoi"
myvar="Hi there"

echo $myvar
echo "message : $myvar"
echo 'message : $myvar'
echo "message : \$myvar"

echo Enter some text
read myvar

echo '$myvar' now equals $myvar

echo "Bien tham so"
IFS= "A"
set foo bar bam
echo "$@"
foo bar bam
echo "$*"
fooAbarAbam
unset IFS
echo "$*"
foo bar bam
#---------
salutation="Hello"
echo $salutation
echo "The program $0 is now running"
echo "The second parameter was $2"
echo "The first parameter was $1"
echo "The parameter list was $*"
echo "The user's home directory is $HOME"
echo "Please enter a new greeting"
read salutation
echo $salutation
echo "The script is now complete"
exit 0