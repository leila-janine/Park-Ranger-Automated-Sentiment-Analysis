-- Initialize the Database
CREATE DATABASE IF NOT EXISTS park_ranger_system;
USE park_ranger_system;

-- USER Table (For JWT Auth)
CREATE TABLE USER (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- LOCATION Table
CREATE TABLE LOCATION (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(255) NOT NULL,
    current_score FLOAT,
    trend_status VARCHAR(50)
) ENGINE=InnoDB;

-- PRODUCT Table
CREATE TABLE PRODUCT (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    performance_tier VARCHAR(255),
    sentiment_rate FLOAT
) ENGINE=InnoDB;

-- SOURCE Table
CREATE TABLE SOURCE (
    source_id INT AUTO_INCREMENT PRIMARY KEY,
    source_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- FEEDBACK Table (Links to LOCATION, PRODUCT, SOURCE)
CREATE TABLE FEEDBACK (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT NOT NULL,
    product_id INT NOT NULL,
    source_id INT NOT NULL,
    feedback_text TEXT NOT NULL,
    sentiment_label VARCHAR(50),
    sentiment_score FLOAT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (location_id) REFERENCES LOCATION(location_id) ON DELETE RESTRICT,
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id) ON DELETE RESTRICT,
    FOREIGN KEY (source_id) REFERENCES SOURCE(source_id) ON DELETE RESTRICT
) ENGINE=InnoDB;

-- CATEGORY_RATING Table
CREATE TABLE CATEGORY_RATING (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    feedback_id INT NOT NULL,
    taste_score INT,
    quality_score INT,
    value_score INT,
    service_score INT,
    presentation_score INT,
    FOREIGN KEY (feedback_id) REFERENCES FEEDBACK(feedback_id) ON DELETE CASCADE
) ENGINE=InnoDB;
