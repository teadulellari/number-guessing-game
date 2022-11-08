#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


if [[ $1 ]]
 then
   echo -e "\n$1"
 fi

 echo "Enter your username:"
 read NAME


 #check if this name exist in database
 PLAYER_ID=$($PSQL "SELECT player_id FROM players where username='$NAME'")
 if [[ -z $PLAYER_ID ]]
 then
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
  UPDATE_USERNAME=$($PSQL "INSERT INTO players(username) VALUES('$NAME')")
  else 
   #else print thisWelcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
  GET_GAMES_NUMBER=$($PSQL "SELECT COUNT(player_id) FROM games WHERE player_id='$PLAYER_ID'")
  GET_BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE player_id='$PLAYER_ID'")
  echo -e "Welcome back, $NAME! You have played $GET_GAMES_NUMBER games, and your best game took $GET_BEST_GAME guesses."
 fi

 echo -e "Guess the secret number between 1 and 1000:"
 #read GUESS_NUMBER
 #this generates me number from 0 to 1000
 RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
 echo $RANDOM_NUMBER
 COUNT=0;
 PLAYER_ID=$($PSQL "SELECT player_id FROM players where username='$NAME'")

while [[ $GUESS_NUMBER != $RANDOM_NUMBER  ]]
  do
  read GUESS_NUMBER
  if [[ $GUESS_NUMBER =~ ^[0-9]+$  ]]
   then
    if [[ $GUESS_NUMBER -lt  $RANDOM_NUMBER  ]]
   then
     let COUNT++
    echo -e  "\nIt's higher than that, guess again:"
    elif [[ $GUESS_NUMBER -gt $RANDOM_NUMBER  ]] 
   then 
     let COUNT++
    echo -e  "\nIt's lower than that, guess again:"
   fi
  else
  echo -e "\nThat is not an integer, guess again:"
  fi
 done
  let COUNT++
 UPDATE_ATTEMPTS=$($PSQL "INSERT INTO games(player_id, attempts) VALUES($PLAYER_ID, $COUNT)")

 echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"