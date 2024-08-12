--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      PKMODEL.dm1
--
-- Date Created : Monday, August 12, 2024 13:58:18
-- Target DBMS : Snowflake
--

CREATE TABLE Entity1(
    col8    CHAR(10),
    col9    CHAR(10)
)
;



CREATE TABLE TABLE46(
    col4NEW    VARCHAR(10)    NOT NULL,
    col5TES    VARCHAR(10)    NOT NULL,
    col6       VARCHAR(10)    NOT NULL,
    col2       VARCHAR(10)    NOT NULL,
    PRIMARY KEY (col2) NOT DEFERRABLE 
)
;



CREATE TABLE TESTER12(
    TEST    VARCHAR(10)    NOT NULL,
    COL1    CHAR(10),
    col2    VARCHAR(10)    NOT NULL,
    col3    VARCHAR(10)    NOT NULL,
    PRIMARY KEY (col2) NOT DEFERRABLE 
)
;



ALTER TABLE TABLE46 ADD 
    FOREIGN KEY (col2)
    REFERENCES TESTER12(col2)
;

