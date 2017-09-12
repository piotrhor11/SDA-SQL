DROP DATABASE IF EXISTS Bookstore;

CREATE DATABASE Bookstore;
USE Bookstore;

CREATE TABLE Books(
`idbook` int NOT NULL AUTO_INCREMENT, 
`authorName` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL, 
`authorSurname` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL, 
`title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL, 
`price` float NOT NULL,
PRIMARY KEY(`Idbook`)) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

CREATE TABLE Customers(
`idcustomer` int NOT NULL AUTO_INCREMENT,
`customerName` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`customerSurname` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`town` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
PRIMARY KEY(`idcustomer`)) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

CREATE TABLE Orders(
`idorder` int NOT NULL AUTO_INCREMENT,
`idcustomer` int NOT NULL,
`idbook` int NOT NULL,
`orderdate` date,
`status` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
PRIMARY KEY(`idorder`)) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

INSERT INTO Books(`authorName`, `authorSurname`, `title`, `price`)
VALUES
('Piotrek', 'Horbatowski', 'JAVA pełna tajemnic', '0.99'),
('Konrad', '?', '1000 stron o petli while', '9.49'),
('Paweł', 'E.', '1001 przykładów użycia Math.PI', '7.99'),
('Sławek', '!', 'W pogoni za wątkiem', '99.99'),
('Łukasz', '@', '200 przepisów na dobry wyjątek', '1.99'),
('Damian', '#', 'Nieskończenie wiele nieskończonych pętli', '1.39'),
('Wojtek', '$', 'Oddam klasę za Enuma', '1.89'),
('Paweł', '%', 'Generyki i inne metody na ból powiek', '1.23');

INSERT INTO Customers(`customerName`, `customerSurname`, `town`)
VALUES
('Kornel', '?', 'Kornelów'),
('Julian', '!', 'Julianów'),
('Kuba', 'M.', 'Kubostan'),
('Maciej', 'T.', 'Maciejów');

INSERT INTO Orders(`idcustomer`, `idbook`, `orderdate`, `status`)
VALUES
(1, 1, '2017-09-11', 'Zamówiono'),
(2, 4, '2017-09-08', 'Wysłane'),
(3, 7, '2017-08-22', 'Wysłane');
