#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Prompt the user for their username
echo -e "Enter your username:"
read USERNAME

# Query the database to find the user's information (by username)
USER_INFO=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")

# Check if the user exists in the database
if [[ -z $USER_INFO ]]
then
  # User doesn't exist
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  
  # Initialize user's game stats
  GAMES_PLAYED=0
  BEST_GAME=0
else
  # User exists
  IFS="|" read GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Start guessing game
NUMBER_OF_GUESSES=0
while true
do
  echo -e "Guess the secret number between 1 and 1000:"
  read GUESS
  
  # Validate input
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
    continue
  fi
  
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
  
  # Check the guess
  if [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo -e "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo -e "It's lower than that, guess again:"
  else
    echo -e "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    
    # Update the database with game results
    if [[ $GAMES_PLAYED -eq 0 || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
    then
      BEST_GAME=$NUMBER_OF_GUESSES
    fi
    
    GAMES_PLAYED=$((GAMES_PLAYED + 1))
    
    # Update user stats in the database
    $PSQL "UPDATE users SET games_played = $GAMES_PLAYED, best_game = $BEST_GAME WHERE username = '$USERNAME'"
    
    # Insert the guess into the guesses table
    $PSQL "INSERT INTO guesses (username, secret_number, guess_number) VALUES ('$USERNAME', $SECRET_NUMBER, $NUMBER_OF_GUESSES)"
    
    break
  fi
done
