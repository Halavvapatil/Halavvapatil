
-- Drop Other Constraints SQL

ALTER TABLE halavva."Entity1"
    DROP CONSTRAINT "PK1"

;
ALTER TABLE halavva."Entity2"
    DROP CONSTRAINT "PK2"

;

-- Drop Constraint, Rename and Create Table SQL


ALTER TABLE halavva."Entity1"
    RENAME TO "Entity1_c4439f48"

;

CREATE TABLE halavva."Entity1"
(
    id1   varchar(3000)  NOT NULL,
    id2   varchar,
    id66  varchar(max),
    id888 varchar(max)
)
DISTSTYLE AUTO

;

INSERT INTO halavva."Entity1"
( id1,
  id2,
  id66 ) 
SELECT
id1,
id2,
id66
FROM halavva."Entity1_c4439f48"

;

DROP TABLE halavva."Entity1_c4439f48"

;

ALTER TABLE halavva."Entity2"
    RENAME TO "Entity2_f58ab252"

;

CREATE TABLE halavva."Entity2"
(
    id1 varchar(3000)  NOT NULL,
    id3 char(10),
    id4 varchar(10)
)
DISTSTYLE AUTO

;

INSERT INTO halavva."Entity2"
( id1,
  id3,
  id4 ) 
SELECT
id1,
id3,
id4
FROM halavva."Entity2_f58ab252"

;

DROP TABLE halavva."Entity2_f58ab252"

;

-- Add Constraint SQL


ALTER TABLE halavva."Entity1"
    ADD CONSTRAINT "PK1" PRIMARY KEY (id1)

;

ALTER TABLE halavva."Entity2"
    ADD CONSTRAINT "PK2" PRIMARY KEY (id1)

;

-- Add Referencing Foreign Keys SQL


ALTER TABLE halavva."Entity2"
    ADD 
    FOREIGN KEY (id1)
    REFERENCES halavva."Entity1" (id1)

;
