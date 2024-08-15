#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Prompt the user for their username
echo -e "Enter your username:"
read USERNAME

# Query the database to find the user's ID (or check if they exist)
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# Check if the user exists in the database
if [[ -z $USER_ID ]]
then
  # User doesn't exist
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
  # User exists
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id='$USER_ID'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE user_id='$USER_ID'")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Print the secret number (for debugging purposes)
echo "Secret number is: $SECRET_NUMBER"

# Here you would add the logic for the user to start guessing the number
