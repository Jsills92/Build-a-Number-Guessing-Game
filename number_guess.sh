#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initialize guess count
GUESS_COUNT=0

# Prompt the user for their username
echo -e "Enter your username:"
read USERNAME

# Query the database to find the user's ID (or check if they exist)
USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

# Check if the user exists in the database
if [[ -z $USER_EXISTS ]]
then
  # User doesn't exist
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  # Add user to the database with initial values
  INSERT_USER=$($PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$USERNAME', 1, 0)")
else
  # User exists
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  # Increment the number of games played
  UPDATE_USER=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME'")
fi

# Game loop
while true
do
  GUESS_COUNT=$(( GUESS_COUNT + 1 ))

  # Prompt for a guess only if it's not the first iteration
  if [[ $GUESS_COUNT -eq 1 ]]
  then
    echo -e "Guess the secret number between 1 and 1000:"
  fi

  read USER_GUESS

  # Check if the guess is an integer
  if ! [[ $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
    continue
  fi

  # Check if the guess is correct
  if [[ $USER_GUESS -eq $SECRET_NUMBER ]]
  then
    echo -e "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    # Update the user's best game record if needed
    if [[ $BEST_GAME -eq 0 || $GUESS_COUNT -lt $BEST_GAME ]]
    then
      UPDATE_USER=$($PSQL "UPDATE users SET best_game = $GUESS_COUNT WHERE username = '$USERNAME'")
    fi
    # Insert the guess into the guesses table
    INSERT_GUESS=$($PSQL "INSERT INTO guesses (username, secret_number, guess_number) VALUES ('$USERNAME', $SECRET_NUMBER, $GUESS_COUNT)")
    exit 0
  elif [[ $USER_GUESS -lt $SECRET_NUMBER ]]
  then
    echo -e "It's higher than that, guess again:"
  else
    echo -e "It's lower than that, guess again:"
  fi
done
