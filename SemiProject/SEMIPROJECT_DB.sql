-- DROP SCHEMA SEMIPROJECT;
CREATE SCHEMA SEMIPROJECT;
USE SEMIPROJECT;



------------------------------------------------
--------------- MEMBER 관련 테이블 ----------------
------------------------------------------------

CREATE TABLE MEMBER (
    mNO 	 INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL, 
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDRESS  VARCHAR(100),
    HOBBY 	 VARCHAR(100),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);




------------------------------------------------
--------------- BOARD 관련 테이블 ----------------
------------------------------------------------



















