DROP DATABASE IF EXISTS teams;
CREATE DATABASE teams;
USE teams;
CREATE TABLE games (match_date DATE,
                    victory BOOLEAN,
                    observation TEXT
);

CREATE TABLE players (firstname VARCHAR(50),
                    lastname VARCHAR(50),
                    start_date DATE
);

DROP USER IF EXISTS 'manager'@'%';
DROP USER IF EXISTS 'recruiter'@'%';

CREATE USER 'manager'@'%' IDENTIFIED by 'manager_password';
GRANT ALL PRIVILEGES ON games TO 'manager'@'%';

CREATE USER 'recruiter'@'%' IDENTIFIED by 'recruiter_password';
GRANT ALL PRIVILEGES ON players TO 'recruiter'@'%';

FLUSH PRIVILEGES;