#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
#Insert unique team
do 
  if [[ $WINNER != "winner" ]]
  then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER') ON CONFLICT DO NOTHING")
    echo $INSERT_WINNER
  fi
  if [[ $OPPONENT != "opponent" ]]
  then 
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT') ON CONFLICT DO NOTHING")
    echo $INSERT_OPPONENT
  fi
done

#Insert games
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE '$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE  '$OPPONENT'")
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)");
    echo $INSERT_OPPONENT
 fi
done
