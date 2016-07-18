# variables and password
DBNAME=pokesurvey
echo "What is your MYSQL password?"
read PASSWORD
# enter mysql
mysql -u root --password=$PASSWORD << EOF
# create database
CREATE DATABASE IF NOT EXISTS $DBNAME;
# Switching into database
USE $DBNAME
# Create Table
CREATE TABLE IF NOT EXISTS tblPokemon (GitHubName VARCHAR(255), Play VARCHAR(255), Team VARCHAR(255), Favorite VARCHAR(255), GamesPlayed INTEGER, Timestamp VARCHAR(255));
# Import Data
LOAD DATA INFILE '/home/cabox/workspace/task-5-database-interface/aggregate.csv' INTO TABLE tblPokemon FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';
# Add primary key
ALTER TABLE tblPokemon ADD PRIMARY KEY (Timestamp);
# Quit MySQL
quit
EOF
# Make .sql file
mysqldump -u root --password=$PASSWORD $DBNAME > $DBNAME.sql
