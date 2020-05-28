## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
   Select * from team order by name;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
select * from player where name like 's%' and country!='south africa' order by name desc;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
         select events_no,clock_in_seconds from event order by events_no asc;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select events_no from event where raider_points+defending_points>=3 order by events_no asc;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
select name from player where (country='india' or country= 'iran') order by name asc;
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
select name from player where (country!='india' or country!= 'iran') order by name asc;
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
select name from skill where name like 'defend%' order by name asc;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
select  stadium_name from venue
where stadium_name like '%Complex'
order by stadium_name asc; 
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT id
FROM outcome
WHERE score < 35
ORDER BY id DESC;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
select game_date from game where game_date BETWEEN '1/01/2020' AND '1/03/2020' order by game_date desc;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT name FROM player WHERE skill_id > 1 ORDER BY name ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT events_no,raider_points,defending_points FROM event,game WHERE innings_id = 1 AND game_date = '26-JAN-2020' ORDER BY events_no ASC;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT winner_team_id FROM outcome,game,team WHERE game_date = '09-MAR-2020' ORDER BY name ASC;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT name FROM game,player,outcome WHERE game_date ='09-MAR-2020' ORDER BY player_of_match ASC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT name FROM player WHERE skill_id=1 ORDER BY name ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT stadium_name FROM game,venue WHERE game_date ='09-MAR-2020' ORDER BY game.venue_id ASC;
-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT coach FROM team,player WHERE country = 'Iran'

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
select events_no,defending_points FROM event,player WHERE player.name = 'Fazel Atrachali' ORDER BY event.events_no;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT name FROM team,outcome,game WHERE game_date BETWEEN '01-MAR-2020' and '31-MAR-2020' ORDER BY team.name;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT name FROM player,outcome,game WHERE game_date BETWEEN '01-MAR-2020' AND '31-MAR-2020' ORDER BY player.name;