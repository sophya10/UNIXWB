#cod to get the numberof files in the  directory 
file_num=$( ls -l | wc -l )
echo "GUESSING GAME"
#fucntion initialisation 
function guessinggame {

# conditional statement for ending the loop 
cv=1
while [[ $cv == 1 ]]
do
echo "Guess how many files?"
#reading the guessed number form the user 

read num
 if [[ $num == $file_num ]]
 then
   echo "Congragulations"

#when cv = 0 the  loop will end  , if you guessed the worng answer  the loop will go on as cv will be set to 1 
   let cv=0

 else
   let cv=1
   t=2

#conditional statement to check if the number of files present  in the directory is high, too high , low , too low
	lim1=$(expr $file_num / 2)
        lim2=$(expr $file_num \* 2)
        if [[ $num -lt $lim1  ]]
	then
         echo "Too Low"
        elif [[ $num -lt $file_num ]]
        then
         echo "Low"
        elif [[ $num -gt $lim2 ]]
	then 
          echo "Too High"
         elif [[ $num -gt $file_num ]]
         then
           echo "High"
         fi
fi
done
}

guessinggame
