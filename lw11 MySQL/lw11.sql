CREATE DATABASE university;

USE university;

CREATE TABLE faculty
(
    faculty_id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (faculty_id)
);

INSERT INTO faculty(title) VALUES ('Faculty of Ecology');
INSERT INTO faculty(title) VALUES ('Faculty of Philology');
INSERT INTO faculty(title) VALUES ('Faculty of Russian language');

CREATE TABLE team
(
    team_id INT AUTO_INCREMENT NOT NULL,
    faculty_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (team_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

INSERT INTO team(faculty_id, title) VALUES (1, 'FE-11');
INSERT INTO team(faculty_id, title) VALUES (1, 'FE-12');
INSERT INTO team(faculty_id, title) VALUES (1, 'FE-13');

INSERT INTO team(faculty_id, title) VALUES (2, 'FP-11');
INSERT INTO team(faculty_id, title) VALUES (2, 'FP-12');
INSERT INTO team(faculty_id, title) VALUES (2, 'FP-13');

INSERT INTO team(faculty_id, title) VALUES (3, 'FRL-11');
INSERT INTO team(faculty_id, title) VALUES (3, 'FRL-12');
INSERT INTO team(faculty_id, title) VALUES (3, 'FRL-13');


CREATE TABLE student
(
    student_id INT AUTO_INCREMENT NOT NULL,
    team_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (team_id) REFERENCES team(team_id)
);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (1, 'Ilya', 'Dementiev', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (1, 'Matthew', 'Jones', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (1, 'Derek', 'Stifler', 20);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (1, 'Ulugbek', 'Salohiddinov', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (1, 'Thomas', 'Shelby', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (2, 'Jennifer', 'Morrison', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (2, 'Tony', 'Montana', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (2, 'Sevak', 'Sargsyan', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (2, 'Danielle', 'Campbell', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (2, 'Kirill', 'Semenov', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (3, 'Nika', 'Barnes', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (3, 'Melanie', 'Patterson', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (3, 'Marietta', 'Ivanova', 24);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (3, 'Bexultan', 'Baizhan', 20);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (3, 'Pavel', 'Burdasov', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (4, 'Daur', 'Setkaleev', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (4, 'John', 'Garrison', 21);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (4, 'Daniel', 'Stepanenko', 23);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (4, 'Floyd', 'Wu', 20);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (4, 'Igor', 'Alexandrov', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (5, 'Veronica', 'Volchanova', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (5, 'Yana', 'Dolmatova', 21);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (5, 'Yuta', 'Nakamoto', 23);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (5, 'Tonya', 'Plotnikova', 20);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (5, 'Lucas', 'Sinclair', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (6, 'Kristina', 'Soldatova', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (6, 'Ashley', 'Malaya', 21);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (6, 'Carl', 'Gallagher', 24);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (6, 'Khalit', 'Yandiev', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (6, 'Carey', 'Stevens', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (7, 'Costa', 'Riko', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (7, 'Rinat', 'Zharylkasynov', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (7, 'Tamara', 'Ivanova', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (7, 'Erin', 'Lindsayeva', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (7, 'Polina', 'Turaeva', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (8, 'Vika', 'Krushatina', 20);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (8, 'Katherine', 'Michaelson', 21);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (8, 'Barbara', 'Kean', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (8, 'Jace', 'Wayland', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (8, 'Katherine', 'Lightwood', 18);

INSERT INTO student(team_id, first_name, last_name, age) VALUES (9, 'Paul', 'Smith', 23);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (9, 'Mark', 'Reznik', 21);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (9, 'Mark', 'Karimov', 18);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (9, 'Ivan', 'Kuzmin', 19);
INSERT INTO student(team_id, first_name, last_name, age) VALUES (9, 'Shredos', 'Taylor', 18);

SELECT
    last_name,
    first_name
FROM
    student
WHERE
    age = 19;


SELECT
    student_id,
    student.last_name,
    student.first_name,
    student.age,
    team.title
FROM
    student 
    JOIN team ON team_id = team_id
WHERE
    team.title = 'FE-11';


SELECT
    student_id,
    student.last_name,
    student.first_name,
    student.age,
    faculty.title
FROM
    student
    JOIN team ON team_id = team_id
    JOIN faculty ON faculty_id = faculty_id
WHERE
    faculty.title = 'Faculty of Philology';


SELECT
    student_id,
    student.first_name,
    student.last_name,
    team.title,
    faculty.title
FROM
    student
    JOIN team ON team_id = team_id
    JOIN faculty ON faculty_id = faculty_id
WHERE
    student.first_name = 'Paul' AND student.last_name = 'Smith';
