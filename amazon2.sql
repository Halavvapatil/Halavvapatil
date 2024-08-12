--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      varcharmodel.DM1
--
-- Date Created : Monday, August 12, 2024 13:29:46
-- Target DBMS : Amazon Redshift
--

CREATE TABLE halavva."Entity1"(
    id1     varchar          NOT NULL,
    id2     varchar(max),
    id66    varchar(4000),
    CONSTRAINT "PK1" PRIMARY KEY (id1)
)
DISTSTYLE AUTO
;



CREATE TABLE halavva."Entity2"(
    id1    varchar        NOT NULL,
    id3    char(10),
    id4    varchar(10),
    CONSTRAINT "PK2" PRIMARY KEY (id1)
)
DISTSTYLE AUTO
;



CREATE TABLE halavva."Entity4"(
    id5    varchar(max),
    id6    varchar(10)
)
DISTSTYLE AUTO
;



ALTER TABLE halavva."Entity2" ADD 
    FOREIGN KEY (id1)
    REFERENCES "Entity1"(id1)
;


