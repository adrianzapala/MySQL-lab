-- Copyright © by Adrian Zapała. All rights reserved. Licence: MIT

CREATE DATABASE s;
USE s;
GRANT ALL ON s.* TO 'adrian'@'localhost' IDENTIFIED BY 'ppp';

CREATE TABLE names 
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
who VARCHAR(128),
quantity INT) ENGINE InnoDB;
	
INSERT INTO names 
(who, quantity) 
VALUES 
('Adrian', 1);