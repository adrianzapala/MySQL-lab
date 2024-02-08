-- Copyright © by Adrian Zapała. All rights reserved. Licence: MIT

CREATE DATABASE astro;
USE astro;
GRANT ALL ON astro.* TO 'adrian'@'localhost' IDENTIFIED BY 'ppp';

CREATE TABLE celestial_objects 
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_of_co VARCHAR(128) NOT NULL,
sign CHAR(2) NOT NULL,
aphelion_au FLOAT NOT NULL,
perihelion_au FLOAT NOT NULL,
orbital_speed_km_s FLOAT,
satellites VARCHAR(1024),
radius_km FLOAT,
mass_kg DOUBLE,
FULLTEXT(satellites)) ENGINE MyISAM;

INSERT INTO celestial_objects
(name_of_co, sign, aphelion_au, perihelion_au, orbital_speed_km_s, satellites, radius_km, mass_kg) 
VALUES
('Mercury', 'PL', 0.466697, 0.307499, 47.36, NULL, 2439.7, 3.3011e+23),
('Venus', 'PL', 0.728213, 0.718440, 35.02, NULL, 6051.8, 4.8675e+24),
('Earth', 'PL', 1.01671388, 0.98329134, 29.78, 'Moon', 6371, 5.97217e+24),
('Mars', 'PL', 1.66621, 1.3814, 24.07, 'Phobos, Deimos', 3389.5, 6.4171e+23),
('Jupiter', 'PL', 5.4570, 4.9506, 13.07, 'Ganymede, Callisto, Io, Europa, Amalthea, Thebe', 69911, 1.8982e+27),
('Saturn', 'PL', 10.1238, 9.0412, 9.68, 'Titan, Rhea, Iapetus, Dione, Tethys, Enceladus, Mimas, Hyperion, Phoebe, Janus, Epimetheus, Prometheus, Pandora, Helene, Atlas, Pan, Telesto, Calypso, Daphnis, Methone', 58232, 5.6834e+26),
('Uranus', 'PL', 20.0965, 18.2861, 6.8, 'Titania, Oberon, Umbriel, Ariel, Miranda, Puck', 25362, 8.681e+25),
('Neptune', 'PL', 30.33, 29.81, 5.43, 'Triton, Proteus, Larissa', 24622, 1.02413e+26),
('Pluto', 'DP', 49.305, 29.658, 4.743, 'Charon, Hydra, Nix', 1188.3, 1.303e+22),
('2005 HC4', 'A', 3.5707, 0.070657, 157, NULL, NULL, NULL),
('2008 FF5', 'A', 4.49421629, 0.079138425, NULL, NULL, NULL, NULL),
('(394130) 2006 HY51', 'A', 5.1111, 0.0791, NULL, NULL, 0.609, NULL),
('(137924) 2000 BD19', 'A', 1.66093678, 0.092057468, NULL, NULL, 0.485, NULL),
('(374158) 2004 UL', 'A', 2.4400, 0.0928, NULL, NULL, 0.258, NULL),
('(386454) 2008 XM', 'A', 2.3334, 0.1111, NULL, NULL, 0.1835, NULL),
('(276033) 2002 AJ129', 'A', 2.6254, 0.1167, NULL, NULL, 0.425, NULL),
('3200 Phaethon', 'A', 2.4028, 0.13998, 19.9, NULL, 2.9, NULL),
('(155140) 2005 UD', 'A', 2.387, 0.1629, 19.9, NULL, 0.64, NULL),
('1566 Icarus', 'A', 1.9697, 0.1865, NULL, NULL, 0.7, NULL),
('(89958) 2002 LY45', 'A', 3.09629597, 0.18667861, NULL, NULL, 0.975, NULL),
('5786 Talos', 'A', 1.9757, 0.18724, NULL, NULL, 0.445, NULL),
('66391 Moshup', 'A', 1.0845, 0.2, NULL, NULL, 0.6585, NULL),
('471926 Jormungandr', 'A', 1.466, 0.218, NULL, NULL, NULL, NULL),
('137052 Tjelvar', 'A', 1.248, 0.238, NULL, NULL, NULL, NULL),
('2013 JX28', 'A', 0.9397700, 0.2618791, NULL, NULL, 0.15, NULL),
('(66063) 1998 RO1', 'A', 1.7045, 0.2774, NULL, NULL, 0.31, NULL),
('2013 ND15', 'A', 1.1660, 0.281, NULL, NULL, 0.035, NULL),
('(16960) 1998 QS52', 'A', 4.0928, 0.3133, NULL, NULL, 2.05, NULL),
('(85989) 1999 JD6', 'A', 1.44183, 0.32425, NULL, NULL, 1.0, NULL),
('2212 Hephaistos', 'A', 3.9674, 0.35068, NULL, NULL, 2.85, NULL),
('37655 Illapa', 'A', 2.5901, 0.36604, NULL, NULL, 0.75, NULL),
('5143 Heracles', 'A', 3.2494, 0.4174, NULL, NULL, 1.63, NULL),
('(33342) 1998 WT24', 'A', 1.0187, 0.4182, NULL, NULL, 0.175, NULL),
('(322756) 2001 CK32', 'A', 1.002762662, 0.44776848, NULL, NULL, 0.4, NULL),
('(524522) 2002 VE68', 'A', 1.0206, 0.4268, NULL, NULL, 0.118, NULL),
('2012 XE133', 'A', 1.0360, 0.40995, NULL, NULL, 0.036, NULL),
('2101 Adonis', 'A', 3.3069, 0.4415, NULL, NULL, 0.2615, NULL),
('2340 Hathor', 'A', 1.2235, 0.4642, NULL, NULL, 0.105, NULL),
('Ceres', 'A', 2.98, 2.55, 17.9, NULL, 469.73, 9.3835e+20),
('4 Vesta', 'A', 2.57138, 2.15221, 19.34, NULL, 262.7, 2.59076e+20),
('2 Pallas', 'A', 3.41, 2.13, 41.4, NULL, 255.5, 2.04e+20),
('10 Hygiea', 'A', 3.4948, 2.7882, 16.76, NULL, 216.5, 87.4e+18);

CREATE TABLE discover 
(
id INT AUTO_INCREMENT NOT NULL,
explorer VARCHAR(128),
yr CHAR(4),
PRIMARY KEY (id)) ENGINE MyISAM;

INSERT INTO discover
(explorer, yr) 
VALUES
('antiquity', 'bc'),
('antiquity', 'bc'),
(NULL, NULL),
('antiquity', 'bc'),
('antiquity', 'bc'),
('antiquity', 'bc'),
('William Herschel', '1781'),
('Johann Gottfried Galle, Urbain Le Verrier, John Couch Adams', '1846'),
('Clyde W. Tombaugh', '1930'),
('LONEOS', '2005'),
('Mt. Lemmon Survey', '2008'),
('LINEAR', '2006'),
('LINEAR', '2000'),
('LINEAR', '2004'),
('LINEAR', '2008'),
('NEAT', '2002'),
('IRAS', '1983'),
('Catalina Sky Srvy.', '2005'),
('W. Baade', '1949'),
('LINEAR', '2002'),
('Robert McNaught', '1991'),
('LINEAR', '1999'),
('Jost Jahn', '2013'),
('C.-I. Lagerkvist', '1998'),
('Pan-STARRS 1', '2006'),
('LINEAR', '1998'),
('Pan-STARRS', '2013'),
('LINEAR', '1998'),
('LONEOS', '1999'),
('Ludmiła Czernych', '1978'),
('Carolyn Shoemaker, Eugene Shoemaker', '1994'),
('C. Shoemaker', '1991'),
('LINEAR', '1998'),
('LINEAR', '2001'),
('LONEOS', '2002'),
('Catalina Sky Survey', '2012'),
('Eugene Delporte', '1936'),
('C. Kowal', '1976'),
('Giuseppe Piazzi', '1801'),
('Heinrich Wilhelm Olbers', '1807'),
('Heinrich Wilhelm Olbers', '1802'),
('A. de Gasparis', '1849');

CREATE TABLE lab 
(
nr INT AUTO_INCREMENT PRIMARY KEY, 
stuff VARCHAR(128), 
quantity INT NULL DEFAULT 1) ENGINE InnoDB;

INSERT INTO lab 
(stuff, quantity) 
VALUES 
('Łazik 4-kołowy', 1),
('Łazik 6-kołowy', 1),
('Kamera obrotowa', 3),
('Radioizotop Pu', 1);