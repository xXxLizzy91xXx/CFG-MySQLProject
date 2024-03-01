CREATE DATABASE GAMESRUS;
USE GAMESRUS;

CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20),
address VARCHAR(255)
);

INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number, address)
VALUES
(1, 'Susan', 'Jones', 's.jones61@hotmail.com', '07895664852', '64 Zoo Lane'),
(2, 'Angelo', 'Ruggs', 'aruggs@live.co.uk', '07896541897', '1 Mad House'),
(3, 'Joe', 'Toms', 'tomsj@yahoo.co.uk', '02089516783', '32 Kick Burger Road'),
(4, 'Karen', 'Connors', 'iamkaren@aol.com', '02039875641', '10 Karensville Avenue'),
(5, 'Chris', 'Jokes', 'joker12@msn.com', '07864935124', '1 Buckingham Palace'),
(6, 'Liam','Gallager','oasisliam@hotmail.co.uk','07935468210','23 Manchester Road'),
(7, 'Alice','Wonderland','aliceinwonderland@yahoo.com','02083946175','45 Down the Rabbit Hole'),
(8, 'Joanne','Abbot','abbotj@hotmail.com','02036497821','34 Parliment Way'),
(9, 'Liam','Sellars','liams9@aol.com','07773649821','19 Sellars Way'),
(10, 'Robert','Conway','Conwaybob@bt.com','07536987364','2 smelly way'),
(11, 'Matt', 'Lafferty', 'mattlaff@hotmail.com', '02089453612', '44 Fife Way');


CREATE TABLE Games (
game_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
genre VARCHAR(50),
release_date DATE,
developer VARCHAR(100),
price DECIMAL(10,2)
);

INSERT INTO Games (game_id, title, genre, release_date, developer, price) 
VALUES 
(1, 'Call Of Duty - Modern Warfare 3', 'First Person Shooter', '2023-11-10', 'Infinity Ward/Sledgehammer', 54.99),
(2, 'Mario vs Donkey Kong', 'Single-Player', '2004-05-24', 'Nintendo Software Technology', 34.99),
(3, 'Jujutsu Kaisen: Cursed Clash', 'Fighting Game', '2024-02-01', 'Namco Bandai Games America', 42.99),
(4, 'Hogwarts Legacy', 'Puzzle, Entertainment, Action', '2023-02-10', 'Avalanche Software', 38.99),
(5, 'Spiderman 2', 'Fighting, Platform, Action', '2023-10-20', 'Isomniac Games', 58.99),
(6, 'Animal Crossing: New Horizons', 'Adventure, Life Simulation, Social Simulation', '2020-03-20', 'Nintendo', 40.00);


CREATE TABLE Platforms (
platform_id INT AUTO_INCREMENT PRIMARY KEY,
platform_name VARCHAR(50)
);

INSERT INTO Platforms (platform_name) 
VALUES 
('Playstation'),
('Xbox'),
('Switch'),
('PC');

CREATE TABLE GamePlatforms (
game_id INT,
platform_id INT,
PRIMARY KEY (game_id, platform_id),
FOREIGN KEY (game_id) REFERENCES Games(game_id),
FOREIGN KEY (platform_id) REFERENCES Platforms(platform_id)
);

INSERT INTO GamePlatforms (game_id, platform_id) 
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(3, 1),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(6, 3);


CREATE TABLE Transactions (
transaction_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
game_id INT,
transaction_date DATE,
amount_paid DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

INSERT INTO Transactions (customer_id, game_id, transaction_date, amount_paid) 
VALUES
(1, 1, '2024-01-15', 54.99),  -- Susan Jones purchased Call Of Duty - Modern Warfare 3 on 2024-01-15
(2, 2, '2024-02-20', 34.99),  -- Angelo Ruggs purchased Mario vs Donkey Kong on 2024-02-20
(3, 3, '2024-03-05', 42.99),  -- Joe Toms purchased Jujutsu Kaisen: Cursed Clash on 2024-03-05
(4, 4, '2024-04-15', 38.99),  -- Karen Connors purchased Hogwarts Legacy on 2024-04-15
(5, 5, '2024-05-25', 58.99),  -- Chris Jokes purchased Spiderman 2 on 2024-05-25
(6, 6, '2024-07-10', 40.00),  -- Liam Gallager purchased Animal Crossing: New Horizons on 2024-07-10
(7, 1, '2024-08-15', 54.99),  -- Alice Wonderland purchased Call Of Duty - Modern Warfare 3 on 2024-08-15
(8, 2, '2024-09-20', 34.99),  -- Joanne Abbot purchased Mario vs Donkey Kong on 2024-09-20
(9, 3, '2024-10-25', 42.99),  -- Liam Sellars purchased Jujutsu Kaisen: Cursed Clash on 2024-10-25
(10, 4, '2024-11-30', 38.99); -- Robert Conway purchased Hogwarts Legacy on 2024-11-30


CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20),
address VARCHAR(255),
position VARCHAR(100),
department VARCHAR(100),
hire_date DATE
);

INSERT INTO Employees (employee_id, first_name, last_name, email, phone_number, address, position, department, hire_date) 
VALUES
(1, 'John', 'Smith', 'john.smith@example.com', '07890123456', '10 Downing Street, London', 'Manager', 'Management', '2023-01-15'),
(2, 'Emma', 'Johnson', 'emma.johnson@example.com', '07123456789', '15 Oxford Street, Manchester', 'Supervisor', 'Sales', '2023-02-20'),
(3, 'David', 'Williams', 'david.williams@example.com', '07987654321', '25 Park Avenue, Bristol', 'Developer', 'IT', '2023-03-10'),
(4, 'Sarah', 'Brown', 'sarah.brown@example.com', '07654321098', '5 Queen Street, Edinburgh', 'Designer', 'Creative', '2023-04-05'),
(5, 'Michael', 'Jones', 'michael.jones@example.com', '07567890123', '30 High Street, Birmingham', 'Analyst', 'Finance', '2023-05-12'),
(6, 'Laura', 'Taylor', 'laura.taylor@example.com', '07098765432', '20 Church Road, Glasgow', 'Marketing Manager', 'Marketing', '2023-06-18'),
(7, 'James', 'Davies', 'james.davies@example.com', '07890123456', '10 Downing Street, London', 'Manager', 'Management', '2023-07-22'),
(8, 'Charlotte', 'Evans', 'charlotte.evans@example.com', '07123456789', '15 Oxford Street, Manchester', 'Supervisor', 'Sales', '2023-08-30'),
(9, 'Daniel', 'Thomas', 'daniel.thomas@example.com', '07987654321', '25 Park Avenue, Bristol', 'Developer', 'IT', '2023-09-14'),
(10, 'Rebecca', 'Wilson', 'rebecca.wilson@example.com', '07654321098', '5 Queen Street, Edinburgh', 'Designer', 'Creative', '2023-10-05'),
(11, 'Andrew', 'Murphy', 'andrew.murphy@example.com', '07567890123', '30 High Street, Birmingham', 'Analyst', 'Finance', '2023-11-20'),
(12, 'Hannah', 'Clark', 'hannah.clark@example.com', '07098765432', '20 Church Road, Glasgow', 'Marketing Manager', 'Marketing', '2023-12-07'),
(13, 'Benjamin', 'Roberts', 'benjamin.roberts@example.com', '07890123456', '10 Downing Street, London', 'Manager', 'Management', '2024-01-15'),
(14, 'Olivia', 'Hall', 'olivia.hall@example.com', '07123456789', '15 Oxford Street, Manchester', 'Supervisor', 'Sales', '2024-02-20'),
(15, 'Matthew', 'Lee', 'matthew.lee@example.com', '07987654321', '25 Park Avenue, Bristol', 'Developer', 'IT', '2024-03-10'),
(16, 'Sophia', 'Green', 'sophia.green@example.com', '07654321098', '5 Queen Street, Edinburgh', 'Designer', 'Creative', '2024-04-05'),
(17, 'William', 'White', 'william.white@example.com', '07567890123', '30 High Street, Birmingham', 'Analyst', 'Finance', '2024-05-12'),
(18, 'Isabella', 'Walker', 'isabella.walker@example.com', '07098765432', '20 Church Road, Glasgow', 'Marketing Manager', 'Marketing', '2024-06-18'),
(19, 'Ethan', 'Edwards', 'ethan.edwards@example.com', '07890123456', '10 Downing Street, London', 'Manager', 'Management', '2024-07-22'),
(20, 'Amelia', 'Baker', 'amelia.baker@example.com', '07123456789', '15 Oxford Street, Manchester', 'Supervisor', 'Sales', '2024-08-30');


CREATE TABLE Reviews (
review_id INT AUTO_INCREMENT PRIMARY KEY,
game_id INT,
customer_id INT,
rating INT,
review_comment TEXT,
review_date DATE,
FOREIGN KEY (game_id) REFERENCES Games(game_id),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Reviews (game_id, customer_id, rating, review_comment, review_date) 
VALUES
(1, 1, 5, 'Great game! Really enjoyed the multiplayer experience.', '2024-01-20'),  -- Susan Jones reviewed Call Of Duty - Modern Warfare 3
(2, 2, 4, 'Fun puzzle game with challenging levels.', '2024-02-25'),  -- Angelo Ruggs reviewed Mario vs Donkey Kong
(3, 3, 4, 'Exciting fighting game with stunning graphics.', '2024-03-10'),  -- Joe Toms reviewed Jujutsu Kaisen: Cursed Clash
(4, 4, 5, 'Amazing RPG adventure set in the wizarding world.', '2024-04-20'),  -- Karen Connors reviewed Hogwarts Legacy
(5, 5, 5, 'Awesome superhero action with fluid gameplay.', '2024-05-30'),  -- Chris Jokes reviewed Spiderman 2
(6, 6, 4, 'Relaxing life simulation game with cute characters.', '2024-07-15'),  -- Liam Gallager reviewed Animal Crossing: New Horizons
(1, 7, 3, 'Decent game, but some aspects could be improved.', '2024-08-20'),  -- Alice Wonderland reviewed Call Of Duty - Modern Warfare 3
(2, 8, 5, 'Addictive puzzle-solving fun for all ages.', '2024-09-25'),  -- Joanne Abbot reviewed Mario vs Donkey Kong
(3, 9, 4, 'Engaging combat mechanics and faithful to the anime.', '2024-10-30'),  -- Liam Sellars reviewed Jujutsu Kaisen: Cursed Clash
(4, 10, 5, 'Immersive storytelling and magical exploration.', '2024-12-05'); -- Robert Conway reviewed Hogwarts Legacy


CREATE TABLE Suppliers (
supplier_id INT AUTO_INCREMENT PRIMARY KEY,
supplier_name VARCHAR(100),
contact_person VARCHAR(100),
email VARCHAR(100),
phone_number VARCHAR(20),
address VARCHAR(255)
);

INSERT INTO Suppliers (supplier_name, contact_person, email, phone_number, address) 
VALUES
('GameTech Distributors', 'John Mega', 'john.mega@gametech.com', '020 1234 5678', '123 High Street, London'),
('GamingWholesale Ltd', 'Bryony Johnson', 'bryony.johnson@gamingwholesale.com', '0161 234 5678', '456 Main Street, Manchester'),
('ConsoleConnect', 'Serena Williams', 'serena.williams@consoleconnect.co.uk', '0117 345 6789', '789 Broad Street, Bristol'),
('PlayParts Ltd', 'Sarah Michaels', 'sarah.michaels@playparts.com', '0131 456 7890', '101 Castle Street, Edinburgh'),
('MegaGames Ltd', 'Michael Thomas', 'michael.thomas@megagames.co.uk', '0121 567 8901', '222 Park Lane, Birmingham');


CREATE TABLE Inventory (
inventory_id INT AUTO_INCREMENT PRIMARY KEY,
game_id INT,
quantity_available INT,
purchase_date DATE,
last_restock_date DATE,
supplier_id INT,
FOREIGN KEY (game_id) REFERENCES Games(game_id),
FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

INSERT INTO Inventory (game_id, quantity_available, purchase_date, last_restock_date, supplier_id) 
VALUES
(1, 50, '2024-01-10', '2024-02-15', 1),  -- Call Of Duty - Modern Warfare 3, 50 copies purchased from GameTech Distributors
(2, 30, '2024-02-20', '2024-03-25', 2),  -- Mario vs Donkey Kong, 30 copies purchased from GamingWholesale Ltd
(3, 40, '2024-03-05', '2024-04-10', 3),  -- Jujutsu Kaisen: Cursed Clash, 40 copies purchased from ConsoleConnect
(4, 60, '2024-04-15', '2024-05-20', 4),  -- Hogwarts Legacy, 60 copies purchased from PlayParts Ltd
(5, 25, '2024-05-25', '2024-06-30', 5),  -- Spiderman 2, 25 copies purchased from MegaGames Ltd
(6, 35, '2024-07-10', '2024-08-15', 1);  -- Animal Crossing: New Horizons, 35 copies purchased from GameTech Distributors

-- INNER JOIN --

SELECT 
    t.transaction_id,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    g.title AS game_title,
    t.transaction_date,
    t.amount_paid
FROM 
    Transactions t
JOIN 
    Customers c ON t.customer_id = c.customer_id
JOIN 
    Games g ON t.game_id = g.game_id;
    
-- LEFT JOIN --
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    t.transaction_id,
    t.transaction_date,
    t.amount_paid
FROM 
    Customers c
LEFT JOIN 
    Transactions t ON c.customer_id = t.customer_id;
    
-- Stored Function --
DELIMITER //

CREATE FUNCTION GetGameTitle(game_id_input INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE game_title VARCHAR(100);
    
    SELECT title INTO game_title FROM Games WHERE game_id = game_id_input;
    
    RETURN game_title;
END//

DELIMITER ;

SELECT GetGameTitle(4);

-- Example Query with sub query --
SELECT 
    title,
    genre,
    price,
    (
        SELECT COUNT(*)
        FROM Transactions
        WHERE game_id = Games.game_id
    ) AS total_transactions
FROM 
    Games
ORDER BY 
    total_transactions DESC;


-- Stored Procedure --
DELIMITER //

CREATE PROCEDURE GetCustomerTransactions(IN p_customer_id INT)
BEGIN
    SELECT 
        transaction_id,
        game_id,
        transaction_date,
        amount_paid
    FROM 
        Transactions
    WHERE 
        customer_id = p_customer_id;
END//

DELIMITER ;

CALL GetCustomerTransactions(1);

-- Query With group by and having --
SELECT 
    game_id,
    AVG(rating) AS avg_rating
FROM 
    Reviews
GROUP BY 
    game_id
HAVING 
    avg_rating >= 4
ORDER BY 
    avg_rating;

    
SELECT * FROM Customers;
SELECT * FROM Games;
SELECT * FROM Platforms;
SELECT * FROM GamePlatforms;
SELECT * FROM Transactions;
SELECT * FROM Employees;
SELECT * FROM Reviews;
SELECT * FROM Suppliers;
SELECT * FROM Inventory;