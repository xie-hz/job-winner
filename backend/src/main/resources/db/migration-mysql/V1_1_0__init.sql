-- MySQL migration: initial schema
CREATE TABLE job_application (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(50),
    job_title VARCHAR(50),
    salary_range VARCHAR(30),
    job_url VARCHAR(200),
    applied_date DATE,
    description VARCHAR(500),
    note VARCHAR(500),
    status VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE profile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    address_street_1 VARCHAR(200),
    address_street_2 VARCHAR(200),
    address_city VARCHAR(50),
    address_state VARCHAR(50),
    address_zip VARCHAR(20),
    linkedin VARCHAR(200),
    github VARCHAR(200),
    personal_website VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE interview (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_application_id INT NOT NULL,
    interview_date DATE NOT NULL,
    interviewer VARCHAR(255),
    description VARCHAR(500),
    status VARCHAR(20),
    FOREIGN KEY (job_application_id) REFERENCES job_application(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE offer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_application_id INT NOT NULL,
    offer_date DATE NOT NULL,
    salary_offered VARCHAR(255),
    description VARCHAR(500),
    FOREIGN KEY (job_application_id) REFERENCES job_application(id) ON DELETE CASCADE,
    CONSTRAINT job_application_unique UNIQUE (job_application_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE frequent_url (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    url VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE question (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(200),
    answer VARCHAR(500)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO profile(id) VALUES (1);
