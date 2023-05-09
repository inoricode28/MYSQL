--Crear base de datos

CREATE DATABASE<db>;

-- Crear tabla

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT UNSIGNED NOT NULL,
    status ENUM('active','inactive') DEFAULT 'inactive',
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO users(username, email, age) VALUES ('user2','user2@test.com',18);
INSERT INTO users(username, email, age) VALUES ('user3','user3@test.com',35);
INSERT INTO users(username, email, age,status) VALUES ('user4','user4@test.com',23,'active');
INSERT INTO users(username, email, age,status) VALUES ('user5','user5@test.com',29,'active');
INSERT INTO users(username, email, age,status) VALUES ('user6','user6@test.com',33,'active');
INSERT INTO users(username, email, age, bio) VALUES ('user7','user7@test.com',45, 'Simple Bio');
INSERT INTO users(username, email, age, bio) VALUES ('user8','user8@test.com',18, 'Simple Bio');
INSERT INTO users(username, email, age, bio) VALUES ('user9','user9@test.com',11, 'Simple Bio');


CREATE TABLE comments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    user_id INT,    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

--Comandos basicos
--mysql -l localhost -u root -p
--system cls;


SELECT * FROM users;
SELECT * FROM users WHERE id = 2;
SELECT * FROM users WHERE id = 3;
SELECT * FROM users WHERE email = 'user8@test.com';
SELECT * FROM users WHERE age > 25;
SELECT * FROM users WHERE age > 50;
SELECT * FROM users WHERE age > 30;
SELECT * FROM users WHERE bio IS NOT NULL;
SELECT * FROM users WHERE bio IS NULL;
SELECT * FROM users WHERE created_at > '2021-07-22 00:00:01';
SELECT * FROM users WHERE DATE(created_at) ='2021-07-22';
SELECT * FROM users WHERE id = 1 OR id = 2 OR id = 3 OR id = 4;
SELECT * FROM users WHERE id IN (1,2,3,4);
SELECT * FROM users WHERE age >=18;
SELECT * FROM users ORDER BY age;
SELECT * FROM users ORDER BY age ASC;
SELECT * FROM users ORDER BY age DESC;
SELECT * FROM users ORDER BY age DESC LIMIT 3;
SELECT * FROM users ORDER BY age ASC LIMIT 1;
SELECT username, email FROM users ORDER BY age ASC LIMIT 1;
SELECT username, email, age FROM users WHERE age > 20 AND age < 55;
SELECT * FROM users WHERE email LIKE '%.com'; --Obten todos los usarios cuyo correo termine en .com
SELECT * FROM users WHERE email LIKE 'user%';
SELECT * FROM users WHERE email LIKE 'user3%';
SELECT * FROM users WHERE email LIKE '%@%';
SELECT * FROM users WHERE email LIKE '%1@%';


SELECT * FROM users WHERE id = 1\G; --Nos dara el formato de cartas

UPDATE users SET bio = 'Desarrollador de software' WHERE id = 1; --Actualizar Registro
UPDATE users SET bio = 'Desarrollador de software (Backend)', username = 'eduardo_gpg' WHERE id = 1;

DELETE FROM users WHERE id = 1; --Elimina la fila id 1

TRUNCATE users; -- Elimina registra y reestablece la informacion de la meta tabla

INSERT INTO comments (title, user_id) VALUES ('Titulo 1',1);
INSERT INTO comments (title, user_id) VALUES ('Titulo 2',1);
INSERT INTO comments (title, user_id) VALUES ('Titulo 3',1);
INSERT INTO comments (title, user_id) VALUES ('Titulo 4',1);

INSERT INTO comments (title, user_id) VALUES ('Titulo 5',2);
INSERT INTO comments (title, user_id) VALUES ('Titulo 6',3);
INSERT INTO comments (title, user_id) VALUES ('Titulo 7',2);
INSERT INTO comments (title, user_id) VALUES ('Titulo 8',4);



--MySQL
--select user from mysql.user; --> ver los usarios

--show procedure status like 'ActualizarStock'\G; --> Ver la exixtencia de un prodedimiento almacenado

