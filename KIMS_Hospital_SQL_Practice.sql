
-- Creating main hospital branch table
CREATE TABLE kimshospitalsmainbranch (
    kimsid INT PRIMARY KEY,
    branchname VARCHAR(250),
    address VARCHAR(150),
    branchcode INT,
    place VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(20),
    managingdirectorname VARCHAR(50)
);

-- Creating sunshine branch table with foreign key relationship
CREATE TABLE kimssunshine (
    kimsid INT PRIMARY KEY,
    branchname VARCHAR(250),
    address VARCHAR(150),
    branchcode INT,
    place VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(20),
    managingdirectorname VARCHAR(50),
    FOREIGN KEY (kimsid) REFERENCES kimshospitalsmainbranch(kimsid)
);

-- Inserting data into kimshospitalsmainbranch
INSERT INTO kimshospitalsmainbranch 
VALUES 
(1, 'kimsgh', 'gachibowli near post office', 1, 'gachibowli', 'telangana', 'india', 'Drbhaskarrao'),
(2, 'kimsvizag', 'near steelplant', 2, 'gopalapatnam', 'AP', 'india' ,'Drbhaskarrao'),
(3, 'kimsamalapuram', 'near amalapuram busstand', 3, 'amalapuram','AP', 'india', 'Drbhaskarrao');

-- Inserting data into kimssunshine
INSERT INTO kimssunshine 
VALUES 
(1, 'kimssd', 'begumpet near rasoolpura', 1, 'begumpet', 'telangana', 'india', 'Drbhaskarrao'),
(2, 'kimsgh', 'gachibowli near flyover', 2, 'shaikpet', 'telangana', 'india', 'Drbhaskarrao'),
(3, 'kimspr', 'gachibowli near flyover', 2, 'shaikpet', 'telangana', 'india', 'Drbhaskarrao');

-- Selecting all records from both tables
SELECT * FROM kimshospitalsmainbranch;
SELECT * FROM kimssunshine;

-- LEFT JOIN
SELECT 
    k.kimsid,
    k.branchname AS hospital_branch,
    s.kimsid AS sunshine_kimsid,
    s.branchname AS sunshine_branch
FROM 
    kimshospitalsmainbranch k
LEFT JOIN 
    kimssunshine s ON k.kimsid = s.kimsid;

-- RIGHT JOIN
SELECT 
    k.kimsid AS hospital_kimsid,
    k.branchname AS hospital_branch,
    s.kimsid AS sunshine_kimsid,
    s.branchname AS sunshine_branch
FROM 
    kimshospitalsmainbranch k
RIGHT JOIN 
    kimssunshine s ON k.kimsid = s.kimsid;

-- FULL OUTER JOIN
SELECT 
    k.kimsid AS hospital_kimsid,
    k.branchname AS hospital_branch,
    s.kimsid AS sunshine_kimsid,
    s.branchname AS sunshine_branch
FROM 
    kimshospitalsmainbranch k
FULL OUTER JOIN 
    kimssunshine s ON k.kimsid = s.kimsid;

-- CROSS JOIN
SELECT 
    k.kimsid AS hospital_kimsid,
    k.branchname AS hospital_branch,
    s.kimsid AS sunshine_kimsid,
    s.branchname AS sunshine_branch
FROM 
    kimshospitalsmainbranch k
CROSS JOIN 
    kimssunshine s;
