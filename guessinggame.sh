

function count_files {
    local count=$(ls -1 | wc -l)
    echo $count
}


echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

correct_answer=$(count_files)
user_guess=-1


while [[ $user_guess -ne $correct_answer ]]
do
    echo "Enter your guess:"
    read user_guess
    
    
    if [[ $user_guess -lt $correct_answer ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ $user_guess -gt $correct_answer ]]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number of files!"
    fi
done


