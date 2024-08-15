#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "Enter your username:"
read USERNAME

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "The secret number is: $SECRET_NUMBER"
