# variables
DBNAME=pokesurvey
MYSQLUSERNAME=dbuser
MYSQLPASSWORD=changethis
# enter mysql
mysql -u root -p
# create database
CREATE DATABASE IF NOT EXIST $DBNAME
# Create Table
CREATE TABLE tblPokemon (GitHub Name VARCHAR(255), Do you play? VARCHAR(255), Team VARCHAR(255), Games Played VARCHAR(255), Timestamp VARCHAR(255));
# Import Data
ADD DATA INFILE '/home/cabox/workspace/task-5-database-interface/aggregate.csv' INTO TABLE tblPokemon FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';
# Add primary key
ALTER TABLE tblPokemon ADD PRIMARY KEY (GitHub Name);
# Quit MySQL
quit
# Make .sql file
mysqldump -u root -p $DBNAME > $DBNAME.sql
