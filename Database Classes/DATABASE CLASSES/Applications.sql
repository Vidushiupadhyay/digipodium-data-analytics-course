DROP TABLE APPLICATIONS;
CREATE TABLE IF NOT EXISTS APPLICATIONS (
    Candidate_id INTEGER,
    Skills varchar
);

INSERT INTO APPLICATIONS (Candidate_id, Skills)
VALUES (101, 'Power BI'),
       (101, 'Python'),
       (101, 'SQL'),
       (102, 'Tableau'),
       (102, 'SQL'),
       (108, 'Python'),
       (108, 'SQL'),
       (108, 'Power BI'),
       (104, 'Python'),
       (104, 'Excel');

SELECT Candidate_id, Skills FROM APPLICATIONS WHERE Skills='Power BI'OR Skills='Python'OR Skills='SQL' ORDER BY Candidate_id ASC;