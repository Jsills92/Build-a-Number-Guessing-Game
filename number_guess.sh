#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

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
  # Insert new user into the database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
else
  # User exists
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Initialize guess count
GUESS_COUNT=0

# Game loop
while true; do
  # Prompt for guess
  echo -e "Guess the secret number between 1 and 1000:"
  read GUESS

  # Check if the input is an integer
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo -e "That is not an integer, guess again:"
    continue
  fi

  # Increment guess count
  GUESS_COUNT=$(( GUESS_COUNT + 1 ))

  # Check guess against the secret number
  if [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo -e "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo -e "It's lower than that, guess again:"
  else
    # User guessed the number correctly
    echo -e "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

    # Insert the guess into the database
    INSERT_GUESS_RESULT=$($PSQL "INSERT INTO guesses (username, secret_number, guess_number) VALUES ('$USERNAME', '$SECRET_NUMBER', '$GUESS_COUNT')")

    # Update user information
    # Update games played
    UPDATE_USER_RESULT=$($PSQL "UPDATE users SET games_played = games_played + 1, best_game = LEAST(COALESCE(best_game, $GUESS_COUNT), $GUESS_COUNT) WHERE username = '$USERNAME'")

    # Exit the script
    exit
  fi
done
