--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      DATA MODEL
--
-- Date Created : Wednesday, August 14, 2024 16:55:13
-- Target DBMS : Snowflake
--

-- 
-- TABLE: Entity1 
--

CREATE HYBRID TABLE Entity1(
    id1    CHAR(10),
    id2    CHAR(10),
    PRIMARY KEY (id1) NOT DEFERRABLE 
)
;



-- 
-- TABLE: Entity2 
--

CREATE HYBRID TABLE Entity2(
    id3    CHAR(10),
    id4    CHAR(10),
    id1    CHAR(10)    NOT NULL,
    PRIMARY KEY (id1) NOT DEFERRABLE , 
    FOREIGN KEY (id1)
    REFERENCES Entity1(id1)
)
;



