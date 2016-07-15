# What is your name?
echo "What is your name?"
read NAME
#Do you play Pokemon Go? (y/n)
echo "Do you play Pokemon Go? (y/n)"
read PLAY
#Are you on or would you like to be on Team Mystic, Valor, or Instint? (one of the three)
echo "Are you on or would you like to be on Team Mystic, Valor, or Instint? Choose ONLY ONE."
read TEAM
#What is your favorite pokemon? (pokemon)
echo "What is your favorite pokemon?"
read FAVORITE
#How many pokemon games have you played in the franchise? (number)
echo "How many pokemon games have you played in the franchise?"
read NUMBER
# Record the time
TIME=$(date)
echo "It is $TIME, thank you for participating"

echo $NAME > temp.list
echo $PLAY >> temp.list
echo $TEAM >> temp.list
echo $FAVORITE >> temp.list
echo $TIME >> temp.list

paste -s temp.list >> aggregate.csv