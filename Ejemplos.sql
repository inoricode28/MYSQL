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