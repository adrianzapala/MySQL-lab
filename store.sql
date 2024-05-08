-- Copyright © by Adrian Zapała. All rights reserved. Licence: MIT

CREATE DATABASE store;
USE store;
GRANT ALL ON store.* TO 'adrian'@'localhost' IDENTIFIED BY 'ppp';

CREATE TABLE employees 
(
employee_id INTEGER AUTO_INCREMENT PRIMARY KEY,
manager_id INTEGER,
section VARCHAR(15),
first_name VARCHAR(11) NOT NULL,
last_name VARCHAR(12) NOT NULL,
academic_title VARCHAR(9) NOT NULL,
salary INT NOT NULL
);

CREATE TABLE product_types 
(
product_type_id INTEGER AUTO_INCREMENT PRIMARY KEY,
product_type_name VARCHAR(30) NOT NULL
);

CREATE TABLE products 
(
product_id INTEGER AUTO_INCREMENT PRIMARY KEY,
product_type_id INTEGER,
CONSTRAINT FOREIGN KEY(product_type_id) REFERENCES product_types(product_type_id) ON DELETE SET NULL,
product_name VARCHAR(30) NOT NULL,
inform VARCHAR(70),
price INT
);

CREATE TABLE clients 
(
client_id INTEGER AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(11) NOT NULL,
last_name VARCHAR(12) NOT NULL,
date_of_birth DATE NOT NULL,
phone VARCHAR(11)
);

CREATE TABLE sale 
(
product_id INTEGER,
CONSTRAINT FOREIGN KEY(product_id) REFERENCES products(product_id) ON DELETE SET NULL,
client_id INTEGER,
CONSTRAINT FOREIGN KEY(client_id) REFERENCES clients(client_id) ON DELETE SET NULL,
quantity INTEGER NOT NULL
);

CREATE TABLE places 
(
place_id INTEGER AUTO_INCREMENT PRIMARY KEY,
employee_id INTEGER,
CONSTRAINT FOREIGN KEY(employee_id) REFERENCES employees(employee_id) ON DELETE SET NULL,
place VARCHAR(30) NOT NULL	
);

INSERT INTO employees 
(manager_id, section, first_name, last_name, academic_title, salary) 
VALUES 
('1', 'Prezes', 'Jan', 'Swoboda', 'dr inż.', '10000'),
('1', 'IT', 'Tomasz', 'Miałkowski', 'dr', '6000'),
('2', 'IT', 'Ryszard', 'Tarnowski', 'inż.', '4000'),
('2', 'IT', 'Wojciech', 'Talar', 'lic.', '4000'),
('2', 'IT', 'Bogdan', 'Pelc', 'mgr inż.', '4000'),
('2', 'IT', 'Adam', 'Lelek', 'mgr inż.', '4000'),
('2', 'IT', 'Stanisław', 'Marczewski', 'mgr', '4000'),
('2', 'IT', 'Tomasz', 'Meller', 'mgr', '4000'),
('1', 'Kadry', 'Anna', 'Pasłęk', 'mgr', '4000'),
('9', 'Kadry', 'Zofia', 'Banisz', 'mgr', '3000'),
('9', 'Kadry', 'Paulina', 'Rafalska', 'mgr', '3000'),
('9', 'Kadry', 'Anna', 'Witalska', 'mgr', '3000'),
('1', 'Sprzedaż', 'Daniel', 'Nowak', 'mgr', '4500'),
('13', 'Sprzedaż', 'Tomasz', 'Gwiazdowski', '-', '2000'),
('13', 'Sprzedaż', 'Wacław', 'Firlej', '-', '2000'),
('13', 'Sprzedaż', 'Jagoda', 'Amiszewska', '-', '2000'),
('13', 'Sprzedaż', 'Paweł', 'Mik', '-', '2000'),
('13', 'Sprzedaż', 'Robert', 'Wentor', '-', '2000'),
('13', 'Sprzedaż', 'Tamara', 'Litowska', '-', '2000'),
('13', 'Sprzedaż', 'Bartosz', 'Bilik', '-', '2000'),
('13', 'Sprzedaż', 'Maciej', 'Sagnowski', '-', '2000'),
('13', 'Sprzedaż', 'Wiesław', 'Myka', '-', '2000'),
('13', 'Sprzedaż', 'Dawid', 'Kotarbiński', '-', '2000'),
('13', 'Sprzedaż', 'Mateusz', 'Jazgod', '-', '2000'),
('13', 'Sprzedaż', 'Marcin', 'Tilewski', '-', '2000'),
('13', 'Sprzedaż', 'Karol', 'Florko', '-', '2000'),
('1', 'Obsluga', 'Zdzisław', 'Bocor', '-', '2000');

INSERT INTO product_types 
(product_type_name) 
VALUES 
('hardware'),
('software'),
('inne');

INSERT INTO products 
(product_type_id, product_name, inform, price) 
VALUES 
(2, 'Adobe Photoshop CS6', 'Program do edycji grafiki rastrowej', 3000),
(1, 'Dysk twardy Seagate', 'Dysk twardy 500 GB', 600),
(1, 'Karta graficzna', 'ATI Radeon', 300),
(2, 'Ms Office 2013', 'Oprogramowanie biurowe', 1200),
(1, 'Seagate Barracuda 2 TB', 'Dyski twarde', 700),
(3, 'Ściereczka', 'Akcesoria czyszczące', 10),
(3, 'Spray', 'Akcesoria czyszczące', 10);

INSERT INTO clients 
(first_name, last_name, date_of_birth, phone) 
VALUES 
('Piotr', 'Norbert', '1972-01-11', '545-557-045'),
('Karolina', 'Nowak', '1992-10-12', '615-147-140'),
('Antoni', 'Miak', '1972-11-12', '645-947-040'),
('Jan', 'Swoboda', '1970-09-09', '675-987-000'),
('Monika', 'Wronowska', '1994-05-24', '874-345-545'),
('Piotr', 'Łączka', '1984-07-24', '892-345-545'),
('Zbigniew', 'Kropka', '1973-11-04', '892-345-805'),
('Karina', 'Pląs', '1988-10-14', '592-345-805'),
('Filip', 'Kowalski', '1990-01-15', '593-345-805'),
('Przemyslaw', 'Zajdel', '1977-06-06', '593-344-805'),
('Damian', 'Zarzeczny', '1987-03-24', '593-444-805'),
('Edward', 'Przybysz', '1985-07-11', '533-444-805'),
('Patrycja', 'Podolak', '1995-08-11', '531-442-805'),
('Dariusz', 'Słowiak', '1992-02-21', '631-442-805'),
('Diana', 'Longawa', '1993-08-27', '632-422-805'),
('Mariusz', 'Piątek', '1988-09-17', '615-422-805'),
('Dorota', 'Gala', '1977-05-12', '615-422-715'),
('Michał', 'Gawron', '1987-05-30', '612-822-715'),
('Rafał', 'Mazur', '1976-03-22', '623-822-715'),
('Michał', 'Pitrus', '1989-04-23', '763-822-735'),
('Magdalena', 'Mikoś', '1993-04-26', '723-812-735'),
('Jakub', 'Jankojć', '1992-12-26', '725-860-735'),
('Marcin', 'Piątek', '1988-11-06', '655-860-935'),
('Marcin', 'Mazur', '1986-01-29', '645-810-935'),
('Artur', 'Antkowiak', '1984-01-19', '622-800-935'),
('Adam', 'Kowalski', '1986-01-15', '627-809-935'),
('Piotr', 'Rączka', '1987-07-15', '633-819-995'),
('Aleksandra', 'Rączka', '1983-01-15', '733-219-995'),
('Jan', 'Łączka', '1980-03-02', '753-229-995'),
('Mateusz', 'Frączak', '1987-02-02', '753-245-912');

INSERT INTO sale 
(product_id, client_id, quantity) 
VALUES 
(1, 2, 12),
(1, 3, 8),
(2, 1, 55),
(3, 23, 1),
(4, 20, 2),
(7, 14, 5),
(6, 30, 11),
(5, 22, 1),
(4, 7, 2),
(1, 5, 4),
(1, 9, 2),
(2, 11, 13),
(3, 6, 1),
(4, 30, 2),
(4, 28, 4),
(7, 19, 7),
(6, 13, 4),
(5, 3, 2),
(4, 3, 2),
(4, 8, 2),
(7, 21, 2),
(1, 24, 2),
(4, 4, 1),
(1, 10, 2),
(4, 12, 2),
(1, 15, 12),
(4, 16, 2),
(7, 17, 12),
(4, 18, 21),
(1, 25, 2),
(3, 26, 3),
(6, 27, 22),
(5, 29, 2);

INSERT INTO places 
(employee_id, place) 
VALUES
(2, 'Warszawa'),
(3, 'Kraków'),
(4, 'Poznań'),
(5, 'Wrocław'),
(6, 'Rzeszów'),
(7, 'Krosno'),
(8, 'Przemyśl');