# In this project we are using Bash to build a simple OS (opperating System think Mac OSX or Microsoft Windows)
# We will then attack this OS using our own designed Ransomware

#our log in screen message
message="Hello Philip, It is currently" 

# file1="docs/passwords.txt"
# openssl enc -aes-256-cbc -salt -in $file1 -out docs/passwords.enc -k PASS 


#this displays the message
echo $message 
#this displays the date and time in UTC time
date

#this line take input to our userPassword varible
echo -e "Please enter your Password:"

#this saves the input to userPassword
read userPassword

#this saves the system password
systemPassword="Password"

#this is an if statement in Bash
if [ $userPassword == $systemPassword ];
# after the condition above is met then do what is below
then
#echo or print or console.log
echo "You are signed in"
echo "#"
#this line take input to our command varible
echo -e "What would you like to view? p for Passwords or m for your precious memories or a for your apps?" 
#saves to our command varible 
read command

#the input p is established as a varible
passwordCommand="p"

if [ $command == $passwordCommand ];
then
#defines file directory
FILE="docs/passwords.txt"
#dumps file contents
echo "*** File - $FILE contents ***"
#concatinates the file contents into the string above
cat $FILE 
#end of this if statment
fi

memoryCommand="m" 
if [ $command == $memoryCommand ];
then
FILE="docs/precious_memories.txt"
echo "*** File - $FILE contents ***"
cat $FILE
fi

appCommand="a" 
if [ $command == $appCommand ];
then
source apps/photoshop.sh
fi

fi
