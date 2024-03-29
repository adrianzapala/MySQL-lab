-- Copyright © by Adrian Zapała. All rights reserved. Licence: MIT

CREATE DATABASE nba;
USE nba;
GRANT ALL ON nba.* TO 'adrian'@'localhost' IDENTIFIED BY 'ppp';

CREATE TABLE teams 
(id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
team VARCHAR(128),
player VARCHAR(64),
height FLOAT,
weight FLOAT,
country VARCHAR(40),
INDEX(team(5)));

INSERT INTO teams
(team, player, height, weight, country) 
VALUES 
('Boston Celtics', 'AI Horford', 2.06, 109, 'USA'),
('Boston Celtics', 'Taco Fall', 2.26, 141, 'Senegal'),
('Brooklyn Nets', 'Kevin Durant', 2.08, 109, 'USA'),
('Brooklyn Nets', 'Bruce Brown', 1.93, 92, 'USA'),
('New York Knicks', 'RJ Barrett', 1.98, 97, 'Canada'),
('New York Knicks', 'Jalen Brunson', 1.85, 86, 'USA'),
('Philadelphia 76ers', 'Seth Curry', 1.88, 84, 'USA'),
('Philadelphia 76ers', 'Tobias Harris',2.03, 103, 'USA'),
('Toronto Raptors', 'Chris Boucher', 2.06, 91, 'Canada'),
('Toronto Raptors', 'Terence Davis', 1.93, 91, 'USA'),
('Denver Nuggets', 'Bol Bol', 2.18, 100, 'USA'),
('Denver Nuggets', 'Nikola Jokic', 2.13, 129, 'Serbia'),
('Minnesota Timberwolves', 'Nathan Knight', 2.08, 115, 'USA'),
('Minnesota Timberwolves', 'Naz Reid', 2.08, 120, 'USA'),
('Oklahoma City Thunder', 'Mike Muscala', 2.08, 108, 'USA'),
('Oklahoma City Thunder', 'Luguentz Dort', 1.9, 97, 'Canada'),
('Portland Trail Blazers', 'Carmelo Anthony', 2.03, 103, 'USA'),
('Portland Trail Blazers', 'Enes Kanter', 2.11, 112, 'Turkey'),
('Utah Jazz', 'Jae Crowder', 1.98, 107, 'USA'),
('Utah Jazz', 'Joe Ingles', 2.03, 103, 'Australia'),
('Chicago Bulls', 'Lonzo Ball', 1.98, 86, 'USA'),
('Chicago Bulls', 'Goran Dragic', 1.91, 86, 'Slovenia'),
('Cleveland Cavaliers', 'Jordan Bell', 2.06, 102, 'USA'),
('Cleveland Cavaliers', 'Dante Exum', 1.96, 97, 'Australia'),
('Detroit Pistons', 'Luka Garza', 2.08, 110, 'USA'),
('Detroit Pistons', 'Cory Joseph', 1.91, 91, 'Canada'),
('Indiana Pacers', 'Malcolm Brogdon', 1.96, 104, 'USA'),
('Indiana Pacers', 'Domantas Sabonis', 2.11, 109, 'Lietuva'),
('Milwaukee Bucks', 'Semi Ojeleye', 1.98, 108, 'USA'),
('Milwaukee Bucks', 'Georgios Kalaitzakis', 2.03, 87, 'Greece'),
('Golden State Warriors', 'Stephen Curry', 1.91, 84, 'USA'),
('Golden State Warriors', 'Juan Toscano-Anderson', 1.98, 95, 'Mexico'),
('Los Angeles Clippers', 'Patrick Beverley', 1.85, 82, 'USA'),
('Los Angeles Clippers', 'Serge Ibaka', 2.08, 107, 'Kongo'),
('Los Angeles Lakers', 'DJ Augustin', 1.8, 83, 'USA'),
('Los Angeles Lakers', 'Avery Bradley', 1.8, 82, 'USA'),
('Phoenix Suns', 'Deandre Ayton', 2.11, 113, 'Bahamas'),
('Phoenix Suns', 'Devin Booker', 1.98, 95, 'USA'),
('Sacramento Kings', 'Terence Davis', 1.93, 91, 'USA'),
('Sacramento Kings', 'Neemias Queta', 2.11, 112, 'Portugal'),
('Sacramento Kings', 'Trey Lyles', 2.06, 106, 'Canada'),
('Atlanta Hawks', 'Kris Dunn', 1.9, 92, 'USA'),
('Atlanta Hawks', 'Clint Capela', 2.08, 108, 'Switzerland'),
('Charlotte Hornets', 'Vernon Carey', 2.08, 122, 'USA'),
('Charlotte Hornets', 'Nick Richards', 2.08, 111, 'Jamaica'),
('Miami Heat', 'Bam Adebayo', 2.06, 116, 'USA'),
('Miami Heat', 'Jimmy Butler', 2.06, 104, 'USA'),
('Orlando Magic', 'Isaiah Briscoe', 1.91, 100, 'USA'),
('Orlando Magic', 'Khem Birch', 2.06, 100, 'Canada'),
('Washington Wizards', 'Troy Brown', 2.01, 98, 'USA'),
('Washington Wizards', 'Rui Hachimura', 2.01, 104, 'Japan'),
('Dallas Mavericks', 'Jalen Brunson', 1.85, 86, 'USA'),
('Dallas Mavericks', 'Jose Juan Barea', 1.78, 82, 'Portorico'),
('Houston Rockets', 'Christian Wood', 2.08, 97, 'USA'),
('Houston Rockets', 'Usman Garuba', 2.03, 99, 'Spain'),
('Memphis Grizzlies', 'Kyle Anderson', 2.06, 104, 'USA'),
('Memphis Grizzlies', 'Gorgui Dieng', 2.06, 114, 'Senegal'),
('New Orleans Pelicans', 'Josh Gray', 1.83, 82, 'USA'),
('New Orleans Pelicans', 'Nicolo Melli', 2.06, 107, 'Italy'),
('San Antonio Spurs', 'Jeremy Sochan', 2.06, 104, 'Poland USA'),
('San Antonio Spurs', 'Drew Eubanks', 2.08, 109, 'USA');