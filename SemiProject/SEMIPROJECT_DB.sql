DROP SCHEMA SEMIPROJECT;
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
    ADDRESSCODEPRF INT,
    ADDRESSCODETOUR INT,
    FAVORITEGENRE 	 VARCHAR(100),
    KAKAOTOKEN	VARCHAR(1000),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'admin', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', 'ROLE_ADMIN', '관리자', 
    '010-1234-4341', 'admin@test.com', '서울시 강남구', 11230, 1, 
    DEFAULT,DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test1', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', DEFAULT, '실험멤버1', 
    '010-1234-4341', 'member1@test.com', '서울시 종로구', 11010, 23,
    DEFAULT,DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test2', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', DEFAULT, '실험멤버2', 
    '010-1234-4341', 'member2@test.com', '서울시 서대문구', 11130, 14, 
    DEFAULT,DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test3', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', DEFAULT, '실험멤버3', 
    '010-1234-4341', 'member3@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test4', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', DEFAULT, '실험멤버4', 
    '010-1234-4341', 'member4@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test5', '$2a$10$.hycR8oa0m7w3NFnvEtwjetw9/zlkQLN/Y6GPQek.B.az9m5ItJ12', DEFAULT, '실험멤버5', 
    '010-1234-4341', 'member5@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test6', '$2a$10$47bjnsY8IZNYSu7lqCAL7O62aMO9hw.wPoI0quec14VHEITEp280m', DEFAULT, '실험멤버6', 
    '010-1234-4341', 'member5@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test7', '$2a$10$47bjnsY8IZNYSu7lqCAL7O62aMO9hw.wPoI0quec14VHEITEp280m', DEFAULT, '실험멤버7', 
    '010-1234-4341', 'member5@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test8', '$2a$10$47bjnsY8IZNYSu7lqCAL7O62aMO9hw.wPoI0quec14VHEITEp280m', DEFAULT, '실험멤버8', 
    '010-1234-4341', 'member5@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, ADDRESSCODEPRF, ADDRESSCODETOUR, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test9', '$2a$10$47bjnsY8IZNYSu7lqCAL7O62aMO9hw.wPoI0quec14VHEITEp280m', DEFAULT, '실험멤버9', 
    '010-1234-4341', 'member9@test.com', '서울시 송파구', 11240, 18, DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);

SELECT * FROM MEMBER;





------------------------------------------------
--------------- PRFBOARD 공연게시판 테이블 ----------------
------------------------------------------------

CREATE TABLE PRFBOARD (	
    bNO INT AUTO_INCREMENT,
    mNO INT, 
    PNAME VARCHAR(100), 
	TITLE VARCHAR(1000), 
	CONTENT VARCHAR(2000), 
    RATINGS INT, 
    ATTACHCOUNT INT DEFAULT 0, 
	READCOUNT INT DEFAULT 0, 
    REPLYCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_PRFBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_PRFBOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2,'몬테크리스토','정말 추천하고 응원하는 뮤지컬 :)','뮤지컬 몬테크리스토를 보기 위해 티켓팅날 예매를 하고 엄마와 함께 공연을 보러 갔었습니다.많은 배우님들이 연기를 하시는데 김성철 배우님의 몬테크리스토 백작이 보고싶어서 이 날로 예매했었어요.뮤지컬 몬테크리스토는 처음 보는 공연뮤지컬 몬테크리스토를 보기 위해 티켓팅날 예매를 하고 엄마와 함께 공연을 보러 갔었습니다.많은 배우님들이 연기를 하시는데 김성철 배우님의 몬테크리스토 백작이 보고싶어서 이 날로 예매했었어요.뮤지컬 몬테크리스토는 처음 보는 공연뮤지컬 몬테크리스토를 보기 위해 티켓팅날 예매를 하고 엄마와 함께 공연을 보러 갔었습니다.많은 배우님들이 연기를 하시는데 김성철 배우님의 몬테크리스토 백작이 보고싶어서 이 날로 예매했었어요.뮤지컬 몬테크리스토는 처음 보는 공연', 5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1,'몬테크리스토', '퀄리티가 괜찮았음', '초등생 이하 아이들이 보기에 괜찮은 것 같아요.배우들의 가창력, 춤도 괜찮았고 무대세트도 퀄리티가 좋았어요.', 3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2,'레미제라블', '정말 소름돋는 최고의무대.', '홍자 요미 카이까지 정말최고의무대였어요 공연퀄이 정말 멋졌어요 나날이달라지네요', 4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3,'레미제라블','끝내줬습니다', '오랜만에 아이랑 뮤지컬본거라 혹시 유치하지않을까 싶기도했지만 웬걸..저도 너무 재밌고 신기했습니다 다른편 나오면 꼭 다시 보려합니다ㅎㅎ', 5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 스토리와 무대로 돌아온다 ', '뮤지컬 Monte Cristo’는 재능있는 캐스트와 감동적인 스토리로 관객을 맞이하는 번째 시즌을 시작했습니다. 년 스위스에서 시작되어 년 한국에서 최초로 공연된 이 작품은 사랑과 복수라는 주제를 다루며, 이는 한국 관객들의 마음을 사로잡는 테마입니다.  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 캐스팅으로 새롭게 선보인다 ', '음악은 아름답고 전반적으로 높은 기술로 노래합니다. Les Mis와 Scarlet Pimpernel과 같은 쇼를 연상시키는 순간이 분명히 있습니다.  ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 음악과 함께하는 새로운 이야기 ', 'Monte Cristo의 Count: The Musical은 클래식한 이야기의 팬들에게 꼭 봐야합니다. 이 공연은 재능있는 캐스트, 아름다운 음악 및 매력적인 이야기로 구성되어 있습니다.  ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,4, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 무대와 함께하는 새로운 감동 ', '이 뮤지컬은 이야기를 잘 전달하는 데 성공했으며, 불가사의하고 아름다운 스코어를 가지고 있습니다. 캐스트는 탁월하며 제작 가치는 최고 수준입니다.  ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,5, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 캐릭터와 함께하는 새로운 복수 ', '뮤지컬 Monte Cristo’는 숨이 멎을 듯한 멋진 제작입니다. 음악은 아름답고 이야기는 매력적이며 공연은 뛰어납니다.  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,6, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 스토리와 함께하는 새로운 감동 ', 'Monte Cristo의 Count: The Musical은 당신이 더 원하는 것을 남기는 스릴 넘치는 감정적인 여행입니다. 음악은 아름답고 이야기는 매력적이며 공연은 뛰어납니다.  ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,7, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 무대와 함께하는 새로운 이야기 ', '뮤지컬 Monte Cristo’는 이야기를 잘 전달하는 걸작입니다. 스코어는 불가사의하고 아름답습니다. 캐스트는 탁월하며 제작 가치는 최고 수준입니다.  ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,8, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 캐스팅과 함께하는 새로운 감동 ', 'Monte Cristo의 Count: The Musical은 훌륭한 극장을 좋아하는 사람들에게 꼭 봐야합니다. 음악은 아름답고 이야기는 매력적이며 공연은 뛰어납니다.  ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,9, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 음악과 함께하는 새로운 이야기 ', '뮤지컬 Monte Cristo’는 숨이 멎을 듯한 멋진 제작입니다. 음악은 아름답고 이야기는 매력적이며 공연은 뛰어납니다.  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,10, '몬테크리스토',  '몬테크리스토 뮤지컬, 새로운 버전으로 돌아온다 ', 'Monte Cristo의 Count: The Musical은 당신이 더 원하는 것을 남기는 스릴 넘치는 감정적인 여행입니다. 음악은 아름답고 이야기는 매력적이며 공연은 뛰어납니다.  ',5);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1, '레미제라블',  '레미제라블 뮤지컬 후기! 퀄리티 대박적과 솔직 리뷰  ', '레미제라블은 절대적인 클래식으로, 나를 항상 감동시키는 작품입니다. 음악은 아름답고 이야기는 가슴 아픈데, 꼭 추천합니다!  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2, '레미제라블',  '레미제라블 뮤지컬, 무대 위의 감동  ', '브로드웨이에서 레미제라블을 보았는데, 배우들의 연기에 감탄했습니다. 모두 놀랄만큼 재능이 넘치고 세트 디자인도 멋졌습니다.  ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3, '레미제라블',  '레미제라블, 뮤지컬의 최강자  ', '레미제라블을 여러 번 봤는데, 절대 지루하지 않습니다. 음악은 매우 감동적이고 이야기는 매우 감동적입니다.  ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,4, '레미제라블',  '레미제라블, 뮤지컬계의 거장  ', '레미제라블은 뮤지컬의 걸작입니다. 노래는 잊을 수 없고 이야기는 화려합니다.  ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,5, '레미제라블',  '레미제라블, 뮤지컬계의 명작  ', '레미제라블을 보기 전에는 의심스러웠지만, 그것은 내가 본 최고의 뮤지컬 중 하나가 되었습니다. 배우들의 연기는 놀랍고 음악은 아름다웠습니다.  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,6, '레미제라블',  '레미제라블, 뮤지컬계의 최고봉  ', '레미제라블은 뮤지컬 팬에게 꼭 추천합니다. 이야기는 강력하고 음악은 잊을 수 없습니다.  ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,7, '레미제라블',  '레미제라블, 뮤지컬계의 대표작  ', '가족과 함께 레미제라블을 보았는데, 우리 모두 감동받았습니다. 배우들의 연기는 놀라웠고 음악은 매우 감동적이었습니다.  ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,8, '레미제라블',  '레미제라블, 뮤지컬계의 전설  ', '레미제라블은 이유가 있어서 클래식입니다. 이야기는 영원하고 음악은 잊을 수 없습니다.  ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,9, '레미제라블',  '레미제라블, 뮤지컬계의 대표주자  ', '무대와 스크린에서 레미제라블을 봤는데, 항상 인상적입니다. 음악은 아름다우며 이야기는 매우 강력합니다.  ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,10, '레미제라블',  '레미제라블, 뮤지컬계의 최고명작  ', '레미제라블은 뮤지컬의 진정한 걸작입니다. 배우들의 연기는 놀라우며 음악은 잊을 수 없습니다. ',5);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1, '겨울나그네', '첫사랑의 아련함과 쓸쓸함을 되살리는, 뮤지컬 겨울나그네 ', '민우와 다혜의 이루어지지 못한 사랑 이야기는 첫사랑의 아련함과 쓸쓸함을 떠올리게 합니다. 민우는 다혜를 만나 사랑을 시작하지만, 집안의 몰락과 출생의 비밀로 인해 두 사람은 갈라지게 됩니다. 민우는 다혜를 잊지 못하고 방황하다 결국 겨울나그네가 되어 떠나게 됩니다. 이처럼 뮤지컬 겨울나그네는 첫사랑의 아련함과 쓸쓸함을 통해 관객들에게 공감과 위로를 전달합니다. ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2, '겨울나그네', '사랑과 상실, 그리고 삶의 의미를 묻는, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네는 사랑과 상실이라는 주제를 중심으로 한 작품입니다. 민우는 다혜를 사랑하지만, 두 사람은 이루어지지 못합니다. 민우는 사랑을 잃은 상실감에 괴로워하며 방황하게 됩니다. 이처럼 뮤지컬 겨울나그네는 사랑과 상실의 아픔을 통해 관객들에게 삶의 의미에 대해 생각해 보게 합니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3, '겨울나그네', '현대적으로 재해석된 슈베르트의 겨울나그네, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네의 음악은 슈베르트의 동명 가곡을 모티브로 하고 있습니다. 김형석 작곡가가 작곡한 음악은 서정적이면서도 낭만적인 분위기를 자아냅니다. 이처럼 뮤지컬 겨울나그네는 음악을 통해 한 청춘의 낭만적인 감성을 표현합니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,4, '겨울나그네', '김형석 작곡가의 감미로운 발라드, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네에는 김형석 작곡가의 감미로운 발라드가 많이 등장합니다. 특히 민우의 대표 넘버인 겨울나그네는 가슴을 울리는 애절한 감성을 선사합니다. 이처럼 뮤지컬 겨울나그네는 음악을 통해 관객들에게 깊은 감동을 선사합니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,5, '겨울나그네', '배우들의 열연과 섬세한 연출이 돋보이는, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네에는 탄탄한 연기력을 갖춘 배우들이 출연합니다. 특히 민우 역을 맡은 배우들의 열연은 관객들을 사로잡습니다. 민우 역을 맡은 배우들은 각자의 개성을 살려 민우의 내면을 섬세하게 표현합니다. 이처럼 뮤지컬 겨울나그네는 배우들의 열연을 통해 관객들에게 몰입감을 선사합니다. ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,6, '겨울나그네', '눈 내리는 겨울날, 더욱 짙어지는 낭만과 감동, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네는 사랑과 상실이라는 주제를 중심으로 한 작품입니다. 민우는 다혜를 사랑하지만, 두 사람은 이루어지지 못합니다. 민우는 사랑을 잃은 상실감에 괴로워하며 방황하게 됩니다. 이처럼 뮤지컬 겨울나그네는 사랑과 상실의 아픔을 통해 관객들에게 삶의 의미에 대해 생각해 보게 합니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,7, '겨울나그네', '잃어버린 사랑을 찾아 떠나는, 한 청년의 여정, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네에는 김형석 작곡가의 감미로운 발라드가 많이 등장합니다. 특히 민우의 대표 넘버인 겨울나그네는 가슴을 울리는 애절한 감성을 선사합니다. 이처럼 뮤지컬 겨울나그네는 음악을 통해 관객들에게 깊은 감동을 선사합니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,8, '겨울나그네', '사랑과 삶의 의미를 다시금 생각하게 하는, 뮤지컬 겨울나그네 ', '민우와 다혜의 이루어지지 못한 사랑 이야기는 첫사랑의 아련함과 쓸쓸함을 떠올리게 합니다. 민우는 다혜를 만나 사랑을 시작하지만, 집안의 몰락과 출생의 비밀로 인해 두 사람은 갈라지게 됩니다. 민우는 다혜를 잊지 못하고 방황하다 결국 겨울나그네가 되어 떠나게 됩니다. 이처럼 뮤지컬 겨울나그네는 첫사랑의 아련함과 쓸쓸함을 통해 관객들에게 공감과 위로를 전달합니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,9, '겨울나그네', '김형석 작곡가의 감미로운 발라드, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네에는 김형석 작곡가의 감미로운 발라드가 많이 등장합니다. 특히 민우의 대표 넘버인 겨울나그네는 가슴을 울리는 애절한 감성을 선사합니다. 이처럼 뮤지컬 겨울나그네는 음악을 통해 관객들에게 깊은 감동을 선사합니다. ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,10, '겨울나그네', '사랑과 상실, 그리고 삶의 의미를 묻는, 뮤지컬 겨울나그네 ', '뮤지컬 겨울나그네에는 탄탄한 연기력을 갖춘 배우들이 출연합니다. 특히 민우 역을 맡은 배우들의 열연은 관객들을 사로잡습니다. 민우 역을 맡은 배우들은 각자의 개성을 살려 민우의 내면을 섬세하게 표현합니다. 이처럼 뮤지컬 겨울나그네는 배우들의 열연을 통해 관객들에게 몰입감을 선사합니다. ',4);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1, '옥탑방고양이', '옥탑방에서 시작된 로맨틱 코미디 ', '뮤지컬 옥탑방고양이는 청춘의 설렘과 성장을 그린 작품입니다. 남정은과 이경민의 사랑과 우정은 청춘의 설렘과 성장을 보여줍니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2, '옥탑방고양이', '첫사랑과 사랑에 대한 이야기 ', '뮤지컬 옥탑방고양이는 첫사랑과 사랑에 대한 이야기입니다. 남정은은 첫사랑을 잊지 못하고 상경하지만, 이경민과 만나면서 새로운 사랑을 시작하게 됩니다. 두 사람의 사랑 이야기는 관객들에게 첫사랑과 사랑의 의미에 대해 생각해 보게 합니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3, '옥탑방고양이', '웃음과 감동을 선사하는 힐링 뮤지컬 ', '뮤지컬 옥탑방고양이는 웃음과 감동을 선사하는 힐링 뮤지컬입니다. 남정은과 이경민의 사랑과 우정, 그리고 주변 인물들의 이야기는 관객들에게 따뜻한 위로와 감동을 전합니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,4, '옥탑방고양이', '배우들의 열연이 돋보이는 작품 ', '뮤지컬 옥탑방고양이에는 탄탄한 연기력을 갖춘 배우들이 출연합니다. 특히 남정은 역을 맡은 배우들의 열연은 관객들을 사로잡습니다. 남정은 역을 맡은 배우들은 각자의 개성을 살려 남정은의 순수함과 당당함을 섬세하게 표현합니다. ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,5, '옥탑방고양이', '사랑과 우정, 그리고 가족의 소중함을 일깨워주는 뮤지컬 ', '뮤지컬 옥탑방고양이는 사랑과 우정, 그리고 가족의 소중함을 일깨워주는 뮤지컬입니다. 남정은과 이경민의 사랑과 우정, 그리고 남정은의 가족 이야기는 관객들에게 사랑과 우정의 소중함, 그리고 가족의 중요성을 일깨워줍니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,6, '옥탑방고양이', '겨울의 낭만과 사랑을 느낄 수 있는 공연 ', '뮤지컬 옥탑방고양이는 겨울의 낭만과 사랑을 느낄 수 있는 공연입니다. 겨울의 설경을 배경으로 펼쳐지는 남정은과 이경민의 사랑 이야기는 관객들에게 겨울의 낭만과 사랑을 선사합니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,7, '옥탑방고양이', '청춘의 설렘과 성장을 그린 작품 ', '뮤지컬 옥탑방고양이는 청춘의 설렘과 성장을 그린 작품입니다. 남정은과 이경민의 사랑과 우정은 청춘의 설렘과 성장을 보여줍니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,8, '옥탑방고양이', '누구나 공감할 수 있는 이야기 ', '뮤지컬 옥탑방고양이는 웃음과 감동을 선사하는 힐링 뮤지컬입니다. 남정은과 이경민의 사랑과 우정, 그리고 주변 인물들의 이야기는 관객들에게 따뜻한 위로와 감동을 전합니다. ',3);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,1, '〈미스터트롯2〉', '트로트의 새로운 전설이 탄생하다 ', '<미스터트롯>는 역대급 경쟁률을 뚫고 선발된 명의 참가자들이 치열한 경쟁을 펼치며 트로트의 새로운 전설을 탄생시킨 프로그램입니다. 최종 우승자인 임영웅을 비롯한 상위권 참가자들은 트로트의 새로운 아이콘으로 자리매김하며 트로트 열풍을 일으켰습니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2, '〈미스터트롯2〉', '다시 한번 트로트 열풍을 일으킨 <미스터트롯> ', '<미스터트롯>는 첫 방송부터 뜨거운 화제를 모으며 시청률 %를 돌파하는 등 트로트 열풍을 일으켰습니다. 프로그램은 트로트의 대중화에 크게 기여했다는 평가를 받고 있습니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,3, '〈미스터트롯2〉', '누구나 꿈꿀 수 있는, 도전과 응원의 무대 ', '<미스터트롯>는 트로트 가수의 꿈을 이루기 위해 도전하는 참가자들의 모습을 통해 누구나 꿈을 향해 도전할 수 있다는 메시지를 전달했습니다. 참가자들의 열정과 노력은 시청자들의 응원과 감동을 이끌어냈습니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,4, '〈미스터트롯2〉', '진정성 있는 음악과 무대로 감동 선사 ', '<미스터트롯>의 참가자들은 진정성 있는 음악과 무대로 시청자들의 마음을 사로잡았습니다. 특히, 참가자들의 진정성은 프로그램의 가장 큰 매력으로 꼽힙니다. ',3);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,5, '〈미스터트롯2〉', '세대를 뛰어넘은 사랑과 응원의 메시지 ', '<미스터트롯>는 세대와 성별을 뛰어넘은 사랑과 응원의 메시지를 전달했습니다. 프로그램은 다양한 연령대의 시청자들이 함께 즐길 수 있는 무대를 선보이며 트로트의 대중화에 기여했습니다. ',4);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,6, '〈미스터트롯2〉', '트로트의 새로운 가능성을 보여준 <미스터트롯> ', '<미스터트롯>는 트로트의 새로운 가능성을 보여준 프로그램으로 평가받고 있습니다. 프로그램은 트로트의 장르적 한계를 뛰어넘는 다양한 장르의 트로트를 선보이며 트로트의 저변을 확대하는 데 기여했습니다. ',5);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,7, '〈미스터트롯2〉', '트로트를 향한 열정과 열기로 가득한 무대 ', '<미스터트롯>의 무대는 트로트를 향한 열정과 열기로 가득했습니다. 참가자들은 매 무대마다 최선을 다하는 모습으로 시청자들의 뜨거운 호응을 받았습니다. ',2);
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,8, '〈미스터트롯2〉', '트로트의 매력을 재발견하게 만든 <미스터트롯> ', '<미스터트롯>는 트로트의 매력을 재발견하게 만든 프로그램으로 평가받고 있습니다. 프로그램은 트로트의 진정성과 감동을 시청자들에게 전달하며 트로트에 대한 관심과 사랑을 높였습니다. ',3);

SELECT * FROM PRFBOARD;


CREATE TABLE PRFBOARD_ATTACH_FILE (
	fNO INT AUTO_INCREMENT, 
    bNO INT,
    ORIGINAL_FILENAME VARCHAR(200), 
	RENAMED_FILENAME VARCHAR(200), 
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    CONSTRAINT PK_PRFBOARD_ATTACH_FILE PRIMARY KEY(fNO),
    CONSTRAINT FK_PRFBOARD_BO FOREIGN KEY(bNO) REFERENCES PRFBOARD(bNO) ON DELETE CASCADE
);

CREATE TABLE PRFREPLY(
  rNO INT PRIMARY KEY AUTO_INCREMENT,
  bNO INT,
  mNO INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNO) REFERENCES PRFBOARD(bNO) ON DELETE CASCADE,
  FOREIGN KEY (mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL 
);

INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 1, '공감합니다');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 2, '좋아요');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 2, 3, '저도 봤습니다');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 3, 2, '아직 관람 안 하셨다면 꼭 보시길 권합니다. 진짜로...');

INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 1, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 2, 2, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 3, 3, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 4, 4, '공연장이 조금 작아서, 배우들의 연기가 더욱 생생하게 느껴졌습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 5, 5, '이 공연은 정말 재미있었습니다. 배우들의 유머감각이 좋아서, 웃음이 끊이지 않았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 6, 6, '음악이 정말 좋았습니다. 공연장에서 듣는 라이브 음악은 정말 다른 느낌이었습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 7, 7, '이 작품은 정말 예술적이었습니다. 무대 미술과 조명이 너무 아름다웠어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 8, 8, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 9, 9, '이 작품은 정말 현실적이었습니다. 배우들의 연기가 너무 자연스러워서, 마치 현실에서 일어나는 일처럼 느껴졌어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 10, 10, '이 공연은 정말 멋있었습니다. 무대 위에서의 배우들의 퍼포먼스가 정말 인상적이었어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 11, 1, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 12, 2, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 13, 3, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 14, 4, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 15, 5, '공연장이 조금 작아서, 배우들의 연기가 더욱 생생하게 느껴졌습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 16, 6, '이 공연은 정말 재미있었습니다. 배우들의 유머감각이 좋아서, 웃음이 끊이지 않았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 17, 7, '음악이 정말 좋았습니다. 공연장에서 듣는 라이브 음악은 정말 다른 느낌이었습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 18, 8, '이 작품은 정말 예술적이었습니다. 무대 미술과 조명이 너무 아름다웠어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 19, 9, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 20, 10, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 21, 1, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 22, 2, '공연장이 조금 작아서, 배우들의 연기가 더욱 생생하게 느껴졌습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 23, 3, '이 공연은 정말 재미있었습니다. 배우들의 유머감각이 좋아서, 웃음이 끊이지 않았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 24, 4, '음악이 정말 좋았습니다. 공연장에서 듣는 라이브 음악은 정말 다른 느낌이었습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 25, 5, '이 작품은 정말 예술적이었습니다. 무대 미술과 조명이 너무 아름다웠어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 26, 6, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 27, 7, '이 작품은 정말 현실적이었습니다. 배우들의 연기가 너무 자연스러워서, 마치 현실에서 일어나는 일처럼 느껴졌어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 28, 8, '이 공연은 정말 멋있었습니다. 무대 위에서의 배우들의 퍼포먼스가 정말 인상적이었어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 29, 9, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 30, 10, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 31, 1, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 32, 2, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 33, 3, '공연장이 조금 작아서, 배우들의 연기가 더욱 생생하게 느껴졌습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 34, 4, '이 공연은 정말 재미있었습니다. 배우들의 유머감각이 좋아서, 웃음이 끊이지 않았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 35, 5, '음악이 정말 좋았습니다. 공연장에서 듣는 라이브 음악은 정말 다른 느낌이었습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 36, 6, '이 작품은 정말 예술적이었습니다. 무대 미술과 조명이 너무 아름다웠어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 37, 7, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 38, 8, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 39, 9, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 40, 10, '공연장이 조금 작아서, 배우들의 연기가 더욱 생생하게 느껴졌습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 41, 1, '이 공연은 정말 재미있었습니다. 배우들의 유머감각이 좋아서, 웃음이 끊이지 않았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 42, 2, '음악이 정말 좋았습니다. 공연장에서 듣는 라이브 음악은 정말 다른 느낌이었습니다. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 43, 3, '이 작품은 정말 예술적이었습니다. 무대 미술과 조명이 너무 아름다웠어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 44, 4, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 45, 5, '이 작품은 정말 현실적이었습니다. 배우들의 연기가 너무 자연스러워서, 마치 현실에서 일어나는 일처럼 느껴졌어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 46, 6, '이 공연은 정말 멋있었습니다. 무대 위에서의 배우들의 퍼포먼스가 정말 인상적이었어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 47, 7, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 48, 8, '이 공연은 정말 감동적이었습니다. 배우들의 연기력이 정말 대단했어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 49, 9, '음악과 무대 연출이 너무 멋있었습니다. 공연장 전체가 분위기가 좋았어요. ');
INSERT INTO PRFREPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 50, 10, '이 작품은 깊은 의미를 담고 있어서, 공연을 보면서 생각할 거리가 많았습니다. ');

UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =1) WHERE BNO =1;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =2) WHERE BNO =2;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =3) WHERE BNO =3;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =4) WHERE BNO =4;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =5) WHERE BNO =5;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =6) WHERE BNO =6;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =7) WHERE BNO =7;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =8) WHERE BNO =8;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =9) WHERE BNO =9;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =10) WHERE BNO =10;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =11) WHERE BNO =11;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =12) WHERE BNO =12;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =13) WHERE BNO =13;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =14) WHERE BNO =14;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =15) WHERE BNO =15;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =16) WHERE BNO =16;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =17) WHERE BNO =17;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =18) WHERE BNO =18;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =19) WHERE BNO =19;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =20) WHERE BNO =20;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =21) WHERE BNO =21;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =22) WHERE BNO =22;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =23) WHERE BNO =23;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =24) WHERE BNO =24;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =25) WHERE BNO =25;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =26) WHERE BNO =26;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =27) WHERE BNO =27;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =28) WHERE BNO =28;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =29) WHERE BNO =29;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =30) WHERE BNO =30;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =31) WHERE BNO =31;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =32) WHERE BNO =32;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =33) WHERE BNO =33;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =34) WHERE BNO =34;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =35) WHERE BNO =35;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =36) WHERE BNO =36;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =37) WHERE BNO =37;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =38) WHERE BNO =38;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =39) WHERE BNO =39;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =40) WHERE BNO =40;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =41) WHERE BNO =41;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =42) WHERE BNO =42;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =43) WHERE BNO =43;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =44) WHERE BNO =44;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =45) WHERE BNO =45;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =46) WHERE BNO =46;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =47) WHERE BNO =47;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =48) WHERE BNO =48;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =49) WHERE BNO =49;
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO =50) WHERE BNO =50;

SELECT * FROM PRFREPLY;


------------------------------------------------
--------------- TOURBOARD 관광게시판 테이블 ----------------
------------------------------------------------

CREATE TABLE TOURBOARD (	
    bNO INT AUTO_INCREMENT,
    mNO INT, 
    T_TITLE VARCHAR(100), 
	TITLE VARCHAR(1000), 
	CONTENT VARCHAR(2000), 
    RATINGS INT, 
    ATTACHCOUNT INT DEFAULT 0, 
	READCOUNT INT DEFAULT 0, 
    REPLYCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_TOURBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_TOURBOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES (0, 1, '경복궁', '서울의 심장', '경복궁은 역사적으로 서울의 심장이라 할 수 있다', 5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,1, '경복궁', '경복궁, 500년 역사를 품은 조선의 궁궐 ', '경복궁은 우리나라의 역사를 바탕으로 생긴 아름다운 건축물로서, 매력적인 고급스러운 아름다움을 자랑합니다. 건축물 자체는 놀라운 정갈함과 화려함으로 이루어져 있으며, 오래된 역사와 전통을 느끼게 해줍니다. 경복궁은 정갈하고 고급스러운 디자인과 아름다운 건축물을 보여주기 때문에, 방문객들과 관람객들에게 절경을 선사합니다.  ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,2, '경복궁', '경복궁에서 느낀 조선의 찬란한 문화와 역사 ', '경복궁은 조선시대 궁궐 중 가장 중심이 되는 왕조 제일의 법궁으로, 태조 년()에 한양으로 수도를 옮긴 후 처음으로 세운 궁궐입니다. 궁궐의 이름은 정도전이 『시경』에 나오는 이미 술에 취하고 이미 덕에 배부르니 군자만년 그대의 큰 복을 도우리라에서 큰 복을 빈다는 뜻의 ‘경복(景福)’이라는 두 글자를 따서 지은 것이다. 경복궁은 임진왜란()으로 인해 창덕궁·창경궁과 함께 모두 불에 탄 것을 년에 흥선대원군이 다시 세웠다. 그러나 년 궁궐 안에서 명성황후 시해 사건이 벌어지고, 고종은 러시아 공관으로 거처를 옮기면서 경복궁은 주인을 잃은 빈 궁궐이 되었다. 년 한일강제병합으로 국권을 잃게 되자 일본인들은 건물을 헐고, 근정전 앞에 조선총독부 청사를 짓는 등 궁궐의 대부분을 훼손함에 따라 점차 궁궐의 제 모습을 잃게 되었다.  ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,3, '경복궁', '경복궁, 아름다운 자연과 조화를 이루는 궁궐 ', '경복궁은 우리나라의 대표적인 궁궐 중 하나로, 역사적인 가치와 아름다운 건축물을 갖추고 있습니다. 궁궐 내부는 정갈하고 아름다운 디자인으로 구성되어 있으며, 방문객들에게 많은 인상을 줍니다. 또한 궁궐 내부에는 다양한 문화행사와 전통공연이 열리기도 하며, 이를 통해 우리나라의 전통문화를 체험할 수 있습니다.  ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,4, '경복궁', '경복궁, 다양한 볼거리와 즐길 거리가 가득한 곳 ', '경복궁은 조선 왕조의 역사를 고스란히 담고 있는 곳입니다. 경복궁을 관람하며 조선 왕조의 역사에 대해 배울 수 있었습니다. 경복궁의 건축물과 유적을 통해 조선 왕조의 정치, 문화, 사회 등을 이해할 수 있었습니다. 특히 경회루의 연못에 있는 징은 조선 왕조의 국왕이 신하들과 함께 연회를 베풀 때 사용했던 것으로, 조선 왕조의 융성함을 느낄 수 있었습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,5, '경복궁', '경복궁, 역사와 문화를 배우는 좋은 기회 ', '경복궁은 조선 왕조의 정궁으로, 조선의 건국과 함께 지어진 궁궐입니다. 경복궁은 화려한 건축물과 정교한 조각으로 유명합니다. 특히 경회루, 근정전, 경복궁역사는 그 화려함이 특히 돋보이는 곳입니다. 경회루의 연못에 비친 건물의 모습은 마치 한 폭의 그림 같았고, 근정전의 웅장한 모습은 보는 이들의 감탄을 자아냈습니다. 경복궁역사는 조선 왕조의 역사를 한눈에 볼 수 있는 곳으로, 조선 왕조의 위대함을 느낄 수 있었습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,6, '경복궁', '경복궁, 가족, 친구, 연인과 함께하기 좋은 곳 ', '경복궁은 야경도 아름답기로 유명합니다. 경복궁의 화려한 건축물이 어둠 속에서 더욱 빛을 발합니다. 특히 경회루의 야경은 그 아름다움으로 유명합니다. 경회루의 연못에 비친 건물의 모습은 마치 동화 속 한 장면 같았습니다. 경복궁의 야경을 감상하며 잠시나마 조선 왕조의 옛 정취에 젖을 수 있었습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,7, '경복궁', '경복궁, 한 번쯤 꼭 가봐야 할 한국의 대표적인 관광지 ', '경복궁에서는 다양한 문화 행사가 열립니다. 전통 공연, 체험 행사, 전시 등 다양한 행사를 통해 경복궁의 역사와 문화를 더욱 생생하게 경험할 수 있습니다. 특히 전통 공연은 경복궁의 분위기와 잘 어우러져 더욱 특별한 경험을 선사합니다. 경복궁에서 열리는 다양한 문화 행사를 통해 한국의 전통 문화를 체험할 수 있었습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,8, '경복궁', '경복궁, 2024년에도 여전히 아름다운 궁궐 ', '경복궁은 가족, 친구, 연인과 함께 즐거운 시간을 보낼 수 있는 곳입니다. 경복궁의 넓은 공간을 거닐며 여유로운 시간을 보낼 수 있고, 다양한 문화 행사를 통해 함께 즐거운 시간을 보낼 수 있습니다. 특히 경복궁의 야경은 잊지 못할 추억을 선사합니다. 가족, 친구, 연인과 함께 경복궁에서 즐거운 시간을 보냈습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,9, '경복궁', '경복궁, 나의 인생에서 가장 특별한 여행 ', '경복궁은 조선 왕조의 건축 기술과 미학을 엿볼 수 있는 곳입니다. 경복궁의 건축물은 화려하면서도 정교한 조각으로 가득합니다. 특히 경회루, 근정전, 향원정 등은 한국 건축의 대표적인 걸작으로 손꼽힙니다. 경회루의 연못에 비친 건물의 모습은 마치 한 폭의 그림 같았고, 근정전의 웅장한 모습은 보는 이들의 감탄을 자아냈습니다. 향원정의 우아한 모습은 조선 왕조의 고귀한 분위기를 느낄 수 있었습니다.  ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,10, '경복궁', '경복궁, 조선의 역사와 문화를 느끼다 ', '경복궁에서는 다양한 문화 행사가 열립니다. 전통 공연, 체험 행사, 전시 등 다양한 행사를 통해 경복궁의 역사와 문화를 더욱 생생하게 경험할 수 있습니다. 특히 전통 공연은 경복궁의 분위기와 잘 어우러져 더욱 특별한 경험을 선사합니다. 저는 경복궁에서 열리는 전통 공연을 관람했는데, 한국의 전통 문화를 이해하는 데 큰 도움이 되었습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,2, '서울숲', '서울숲의 넓은 공간에 감탄했다 ', '서울숲은 서울 도심에 위치한 대규모 공원입니다. 면적이 약 500만㎡에 달하는 서울숲은 도심 속 자연을 느낄 수 있는 곳입니다. 서울숲을 처음 방문했을 때, 그 넓은 공간에 감탄했습니다. 서울숲의 푸른 나무와 잔디밭을 바라보며 여유로운 시간을 보낼 수 있었습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,3, '서울숲', '서울숲의 다양한 볼거리에 즐거웠다 ', '서울숲에는 다양한 볼거리가 있습니다. 숲속 동물원, 서울숲 생태관, 서울숲둘레길, 서울숲 잔디광장 등 다양한 시설과 공간이 마련되어 있습니다. 서울숲 동물원에서 동물들을 만나고, 서울숲 생태관에서 자연에 대해 배우며 즐거운 시간을 보냈습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,4, '서울숲', '서울숲의 아름다운 야경을 감상했다 ', '서울숲은 야경도 아름답기로 유명합니다. 서울숲의 화려한 조명은 도심 속 낭만을 더해줍니다. 특히 서울숲 잔디광장에서 바라보는 야경은 그 아름다움이 더욱 돋보입니다. 서울숲의 야경을 감상하며 잠시나마 도심의 번잡함을 잊을 수 있었습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,5, '서울숲', '서울숲에서 다양한 체험을 즐겼다 ', '서울숲에서는 다양한 체험을 즐길 수 있습니다. 숲 해설 프로그램, 자전거 대여, 피크닉 등 다양한 프로그램을 통해 서울숲을 더욱 알차게 즐길 수 있습니다. 저는 서울숲 해설 프로그램을 통해 서울숲에 대한 다양한 정보를 얻을 수 있었고, 자전거 대여를 통해 서울숲을 한 바퀴 둘러보는 즐거운 시간을 보냈습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,6, '서울숲', '서울숲에서 가족, 친구, 연인과 함께 즐거운 시간을 보냈다 ', '서울숲은 가족, 친구, 연인과 함께 즐거운 시간을 보내기 좋은 곳입니다. 넓은 공간과 다양한 볼거리, 체험거리를 갖추고 있어 누구나 즐길 수 있습니다. 저는 가족과 함께 서울숲을 방문했는데, 모두들 즐거운 시간을 보낼 수 있었습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,7, '서울숲', '서울숲에서 아이들과 함께 즐거운 시간을 보냈다 ', '서울숲은 아이들과 함께 방문하기 좋은 곳입니다. 숲속 동물원, 서울숲 생태관, 서울숲둘레길 등 다양한 시설과 공간이 마련되어 있어 아이들이 마음껏 뛰어놀 수 있습니다. 특히 숲속 동물원에서는 아이들이 다양한 동물들을 만나며 즐거운 시간을 보낼 수 있습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,8, '서울숲', '서울숲에서 반려동물과 함께 즐거운 시간을 보냈다 ', '서울숲은 반려동물과 함께 방문할 수 있는 곳입니다. 서울숲둘레길과 잔디광장 등 반려동물과 함께 산책을 즐길 수 있는 공간이 마련되어 있습니다. 특히 잔디광장에서는 반려동물과 함께 피크닉을 즐길 수 있습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,9, '서울숲', '서울숲에서 힐링 시간을 보냈다 ', '서울숲은 도심 속 자연을 느낄 수 있는 곳으로, 힐링을 위한 최적의 장소입니다. 서울숲의 푸른 나무와 잔디밭을 바라보며 여유로운 시간을 보내며 마음의 평화를 찾을 수 있었습니다.  ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,10, '서울숲', '서울숲에서 다양한 공연과 행사를 즐겼다 ', '서울숲에서는 다양한 공연과 행사가 열립니다. 전통 공연, 음악 공연, 전시 등 다양한 행사를 통해 서울숲에서의 시간을 더욱 풍요롭게 보낼 수 있습니다. 저는 서울숲에서 열리는 전통 공연을 관람했는데, 한국의 전통 문화를 체험하는 즐거운 시간을 보냈습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,1, '서울숲', ' 서울숲에서 새로운 추억을 만들었다 ', '서울숲은 다양한 볼거리와 체험거리가 있어, 새로운 추억을 만들기 좋은 곳입니다. 저는 서울숲에서 가족과 함께 피크닉을 즐겼는데, 즐거운 시간 보내며 좋은 추억을 만들 수 있었습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,3, '남산서울타워', '서울의 랜드마크, 서울타워 ', '서울의 중심부에 위치한 서울타워는 서울을 대표하는 랜드마크입니다. 전망대에서 바라보는 서울의 전경은 정말 압도적이었습니다. 특히 야경은 정말 아름답고 잊을 수 없는 추억이 되었습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,4, '남산서울타워', '남산타워에서 즐기는 서울의 매력 ', '남산타워는 서울의 역사와 문화를 느낄 수 있는 곳입니다. 타워 주변에는 남산공원이 있어 산책을 즐기며 여유를 만끽할 수도 있습니다. 전망대에서는 서울의 아름다운 전경을 감상할 수 있어 서울 여행의 필수 코스로 손꼽힙니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,5, '남산서울타워', '남산타워에서의 로맨틱한 데이트 ', '남산타워는 로맨틱한 데이트 장소로 인기가 많습니다. 전망대에서 내려다보는 서울의 야경은 정말 로맨틱하고 분위기가 좋습니다. 또한, 타워 내에는 다양한 볼거리와 즐길거리가 있어 데이트 코스로 손색이 없습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,6, '남산서울타워', '남산타워에서의 가족 나들이 ', '남산타워는 가족 나들이 장소로도 좋습니다. 타워 주변에는 남산공원이 있어 아이들과 함께 산책을 즐기며 여유를 만끽할 수 있습니다. 전망대에서는 서울의 아름다운 전경을 감상하며 추억을 만들 수 있습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,7, '남산서울타워', '남산타워, 서울 여행의 필수 코스 ', '남산타워는 서울을 대표하는 랜드마크이자 서울 여행의 필수 코스입니다. 전망대에서 바라보는 서울의 전경은 정말 압도적이고 잊을 수 없는 추억을 선사합니다. 또한, 타워 주변에는 남산공원이 있어 산책을 즐기며 여유를 만끽할 수도 있습니다. 서울 여행을 계획하고 있다면 남산타워는 꼭 방문해 보시기 바랍니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,8, '남산서울타워', '남산타워, 서울의 역사와 문화를 느끼다 ', '남산타워는 서울을 대표하는 랜드마크이자 역사와 문화의 산실입니다. 타워 내에는 남산 역사관, 남산 한옥문화체험관 등 다양한 볼거리와 즐길거리가 있어 서울의 역사와 문화를 체험할 수 있습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,9, '남산서울타워', '남산타워, 서울의 야경을 감상하다 ', '남산타워 전망대에서 바라보는 서울의 야경은 정말 아름답습니다. 서울의 화려한 불빛이 한눈에 들어오고, 특히 남산타워의 조명이 더해져 더욱 로맨틱한 분위기를 자아냅니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,10, '남산서울타워', '남산타워, 케이블카를 타고 올라가다 ', '남산타워까지는 케이블카를 타고 올라갈 수 있습니다. 케이블카를 타고 올라가는 동안 서울의 아름다운 풍경을 감상할 수 있어 더욱 특별한 경험이 될 것입니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,1, '남산서울타워', '남산타워, 가족과 함께 즐기다 ', '남산타워는 가족과 함께 방문하기 좋은 곳입니다. 타워 주변에는 남산공원이 있어 산책을 즐기며 여유를 만끽할 수 있고, 전망대에서는 서울의 아름다운 전경을 감상하며 추억을 만들 수 있습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,2, '남산서울타워', '남산타워, 서울 여행의 시작과 끝 ', '남산타워는 서울 여행의 시작과 끝으로 손꼽히는 곳입니다. 서울에 도착하면 남산타워를 먼저 방문하여 서울의 전경을 감상하고, 서울을 떠날 때는 남산타워를 다시 한번 방문하여 서울에 대한 추억을 되새기는 것도 좋습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,4, '국립중앙박물관', '국립중앙박물관, 한국의 문화유산을 만나다 ', '국립중앙박물관은 한국의 대표적인 박물관으로, 한국의 역사와 문화를 한눈에 볼 수 있는 곳입니다. 다양한 전시품을 통해 한국의 고대부터 근현대에 이르는 문화를 체험할 수 있습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,5, '국립중앙박물관', '국립중앙박물관, 아이들과 함께하는 역사 여행 ', '국립중앙박물관은 아이들과 함께 방문하기 좋은 곳입니다. 어린이박물관에서는 아이들이 재미있게 역사를 배울 수 있는 다양한 전시와 체험 프로그램을 운영하고 있습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,6, '국립중앙박물관', '국립중앙박물관, 여유롭게 즐기는 문화 산책 ', '국립중앙박물관은 규모가 크고 전시품이 많아 여유롭게 둘러보는 것이 좋습니다. 박물관 내에는 넓은 정원과 휴게 공간이 있어 산책을 즐기며 여유를 만끽할 수 있습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,7, '국립중앙박물관', '국립중앙박물관, 특별한 전시를 만나다 ', '국립중앙박물관에서는 다양한 특별 전시를 개최하고 있습니다. 한국의 고대 유물부터 세계적인 명작까지 다양한 전시를 통해 색다른 경험을 할 수 있습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,8, '국립중앙박물관', '국립중앙박물관, 한국의 문화유산을 보존하기 위한 노력 ', '국립중앙박물관은 한국의 문화유산을 보존하고 연구하기 위해 노력하고 있습니다. 다양한 전시와 교육 프로그램을 통해 한국의 문화유산을 알리고 가치를 높이는 데 앞장서고 있습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,9, '국립중앙박물관', '국립중앙박물관, 한국의 문화유산을 세계에 알리다 ', '국립중앙박물관은 한국의 문화유산을 세계에 알리기 위해 노력하고 있습니다. 해외 전시를 개최하고, 한국의 문화유산을 연구하는 국제 학술회의를 개최하는 등 다양한 활동을 통해 한국의 문화유산을 세계에 널리 알리고 있습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,10, '국립중앙박물관', '국립중앙박물관, 서울의 대표적인 문화 명소 ', '국립중앙박물관은 서울의 대표적인 문화 명소로, 국내외 관광객들이 많이 찾는 곳입니다. 한국의 문화유산을 체험하고, 한국의 문화를 이해할 수 있는 좋은 기회를 제공합니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,1, '국립중앙박물관', '국립중앙박물관, 다시 찾고 싶은 곳 ', '국립중앙박물관은 한국의 문화유산을 한눈에 볼 수 있는 곳으로, 다시 찾고 싶은 곳입니다. 다양한 전시와 체험 프로그램을 통해 한국의 역사와 문화를 더욱 깊이 이해할 수 있는 기회를 제공합니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,2, '국립중앙박물관', '국립중앙박물관, 한국의 문화를 가슴에 품다 ', '국립중앙박물관은 한국의 역사와 문화를 한눈에 볼 수 있는 곳입니다. 다양한 전시품을 통해 한국의 고대부터 근현대에 이르는 문화를 체험할 수 있었습니다. 특히, 어린이박물관에서는 아이들이 재미있게 역사를 배울 수 있는 다양한 전시와 체험 프로그램을 운영하고 있어, 아이들과 함께 방문하기에도 좋았습니다. 국립중앙박물관을 방문하며 한국의 문화에 대한 이해를 넓힐 수 있었고, 한국의 문화를 가슴에 품고 돌아올 수 있었습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,3, '국립중앙박물관', '국립중앙박물관, 한국의 문화유산을 탐험하다 ', '국립중앙박물관은 규모가 크고 전시품이 많아, 여유롭게 둘러보는 것이 좋습니다. 박물관 내에는 넓은 정원과 휴게 공간이 있어 산책을 즐기며 여유를 만끽할 수 있었습니다. 또한, 특별한 전시를 통해 한국의 고대 유물부터 세계적인 명작까지 다양한 전시를 통해 색다른 경험을 할 수 있었습니다. 국립중앙박물관은 한국의 문화유산을 보존하고 알리기 위한 노력을 하고 있는 곳으로, 한국의 문화유산을 탐험하고 싶은 분들에게 추천하고 싶은 곳입니다.  ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,5, '롯데월드타워 서울스카이', '서울스카이, 서울의 전망을 한눈에! ', '서울스카이를 방문해서 서울의 전망을 한눈에 보았습니다. 탁 트인 전망이 정말 멋졌고, 서울의 새로운 모습을 볼 수 있어서 좋았습니다. 입장료가 조금 비싸긴 하지만, 한번쯤 방문해볼 만한 곳이라고 생각합니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,6, '롯데월드타워 서울스카이', '서울스카이, 야경이 정말 아름답습니다! ', '서울스카이를 방문해서 야경을 감상했습니다. 서울의 야경이 정말 아름답더라고요. 특히, 롯데월드타워가 화려하게 불을 밝히는 모습이 정말 인상적이었습니다. 야경을 좋아하는 분들께 추천합니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,7, '롯데월드타워 서울스카이', '서울스카이, 전망대 시설이 잘 되어 있습니다. ', '서울스카이의 전망대 시설이 잘 되어 있어서 편안하게 관람할 수 있었습니다. 특히, 121층의 스카이데크는 유리바닥으로 되어 있어서 아찔한 경험을 할 수 있었습니다. 전망대 시설에 대한 만족도는 매우 높습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,8, '롯데월드타워 서울스카이', '서울스카이, 다양한 체험과 이벤트가 있습니다. ', '서울스카이에는 다양한 체험과 이벤트가 있어서 지루하지 않게 관람할 수 있었습니다. 특히, 119층의 서울라이브가 인상적이었습니다. 서울의 다양한 모습을 생생하게 볼 수 있어서 좋았습니다. ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,9, '롯데월드타워 서울스카이', '서울스카이, 가족여행으로 추천합니다. ', '서울스카이는 가족여행으로 추천하는 곳입니다. 다양한 볼거리와 즐길거리가 있어서 아이들도 좋아합니다. 특히, 120층의 스카이브릿지는 아이들이 좋아하는 곳입니다. 아이들과 함께 즐거운 추억을 만들 수 있는 곳입니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,10, '롯데월드타워 서울스카이', '서울스카이, 데이트 코스로 추천합니다. ', '서울스카이는 데이트 코스로 추천하는 곳입니다. 탁 트인 전망과 아름다운 야경을 감상하면서 로맨틱한 시간을 보낼 수 있습니다. 특히, 121층의 스카이데크는 데이트 코스로 인기가 많습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,1, '롯데월드타워 서울스카이', '서울스카이, 입장료 할인 팁 ', '서울스카이 입장료는 성인 기준 29,000원입니다. 하지만, 할인 혜택을 받으면 저렴하게 이용할 수 있습니다. 할인 혜택은 홈페이지에서 확인할 수 있습니다. ' ,3);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,2, '롯데월드타워 서울스카이', '서울스카이, 방문 시 주의사항 ', '서울스카이를 방문할 때는 다음과 같은 주의사항을 확인하시기 바랍니다. - 에스컬레이터 이용 시 주의 - 유리바닥을 통과하는 경우 발밑에 주의 - 야외테라스 이용 시 안전벨트 착용 - 카메라 등 전자제품 소지 시 주의사항 - 음식물 반입 금지 ' ,4);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,3, '롯데월드타워 서울스카이', '서울스카이, 세계에서 6번째로 높은 빌딩에서 서울을 내려다보다. ', '세계에서 6번째로 높은 빌딩인 롯데월드타워의 전망대인 서울스카이를 방문했습니다. 120층까지 올라가는 엘리베이터는 약 1분 정도 소요되었고, 도착하자마자 탁 트인 서울의 전경이 눈앞에 펼쳐졌습니다. 덕수궁, 남산타워, 한강 등 서울의 주요 명소를 한눈에 볼 수 있었고, 특히 야경은 정말 멋졌습니다. 서울의 새로운 모습을 볼 수 있어서 정말 좋았습니다. ' ,5);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES(0,4, '롯데월드타워 서울스카이', '서울스카이, 다양한 체험과 이벤트로 즐거운 시간을 보냈다. ', '서울스카이에 방문해서 다양한 체험과 이벤트를 즐겼습니다. 특히, 121층의 스카이데크는 유리바닥으로 되어 있어서 아찔한 경험을 할 수 있었고, 119층의 서울라이브는 서울의 다양한 모습을 생생하게 볼 수 있었습니다. 또한, 전망대 곳곳에는 다양한 포토존이 마련되어 있어서 추억을 남길 수 있었습니다. 가족, 친구, 연인과 함께 가면 정말 좋은 곳이라고 생각합니다. ' ,3);

SELECT * FROM TOURBOARD;

CREATE TABLE TOURBOARD_ATTACH_FILE (
	fNO INT AUTO_INCREMENT, 
    bNO INT,
    ORIGINAL_FILENAME VARCHAR(200), 
	RENAMED_FILENAME VARCHAR(200), 
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    CONSTRAINT PK_TOURBOARD_ATTACH_FILE PRIMARY KEY(fNO),
    CONSTRAINT FK_TOURBOARD_BO FOREIGN KEY(bNO) REFERENCES TOURBOARD(bNO) ON DELETE CASCADE
);

CREATE TABLE TOURREPLY(
  rNO INT PRIMARY KEY AUTO_INCREMENT,
  bNO INT,
  mNO INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNO) REFERENCES TOURBOARD(bNO) ON DELETE CASCADE,
  FOREIGN KEY (mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL 
);

INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,1,1,  '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,2,2, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,3,3, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,4,4, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,5,5, '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,6,6, '여행 후기가 정말 생생하네요. 마치 제가 그곳에 있는 것 같았습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,7,7, '여행 준비에 많은 도움이 되는 후기였습니다. 감사합니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,8,8, '여행의 추억을 공유해 주셔서 감사합니다. 저도 행복한 추억을 만들고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,9,9, '여행 후기가 너무 부러워요. 저도 빨리 여행을 가고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,10,10, '여행 후기가 너무 좋네요. 다음에 가면 꼭 한번 따라 해 보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,11,1,  '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,12,2, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,13,3, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,14,4, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,15,5, '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,16,6, '여행 후기가 정말 생생하네요. 마치 제가 그곳에 있는 것 같았습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,17,7, '여행 준비에 많은 도움이 되는 후기였습니다. 감사합니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,18,8, '여행의 추억을 공유해 주셔서 감사합니다. 저도 행복한 추억을 만들고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,19,9, '여행 후기가 너무 부러워요. 저도 빨리 여행을 가고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,20,10, '여행 후기가 너무 좋네요. 다음에 가면 꼭 한번 따라 해 보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,21,1,  '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,22,2, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,23,3, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,24,4, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,25,5, '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,26,6, '여행 후기가 정말 생생하네요. 마치 제가 그곳에 있는 것 같았습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,27,7, '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,28,8, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,29,9, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,30,10, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,31,1,  '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,32,2, '여행 후기가 정말 생생하네요. 마치 제가 그곳에 있는 것 같았습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,33,3, '여행 준비에 많은 도움이 되는 후기였습니다. 감사합니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,34,4, '여행의 추억을 공유해 주셔서 감사합니다. 저도 행복한 추억을 만들고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,35,5, '여행 후기가 너무 부러워요. 저도 빨리 여행을 가고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,36,6, '여행 후기가 너무 좋네요. 다음에 가면 꼭 한번 따라 해 보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,37,7, '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,38,8, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,39,9, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,40,10, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,41,1,  '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,42,2, '여행 후기가 정말 생생하네요. 마치 제가 그곳에 있는 것 같았습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,43,3, '여행 준비에 많은 도움이 되는 후기였습니다. 감사합니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,44,4, '여행의 추억을 공유해 주셔서 감사합니다. 저도 행복한 추억을 만들고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,45,5, '여행 후기가 너무 부러워요. 저도 빨리 여행을 가고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,46,6, '여행 후기가 너무 좋네요. 다음에 가면 꼭 한번 따라 해 보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,47,7, '관광 후기 감사합니다. 저도 꼭 한번 가보고 싶네요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,48,8, '정말 유익한 후기였습니다. 다음에 여행 계획 세울 때 참고하겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,49,9, '사진도 너무 예쁘네요. 저도 찍고 싶어졌어요. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,50,10, '맛집 추천 감사합니다. 다음에 가면 꼭 한번 들러보겠습니다. ');
INSERT INTO TOURREPLY (rNO, bNO, mNO, CONTENT) VALUES(0,51,1,  '여행 팁 감사합니다. 다음에 여행갈 때 잘 활용하겠습니다. ');

SELECT * FROM TOURREPLY;

UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =1) WHERE BNO =1;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =2) WHERE BNO =2;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =3) WHERE BNO =3;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =4) WHERE BNO =4;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =5) WHERE BNO =5;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =6) WHERE BNO =6;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =7) WHERE BNO =7;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =8) WHERE BNO =8;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =9) WHERE BNO =9;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =10) WHERE BNO =10;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =11) WHERE BNO =11;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =12) WHERE BNO =12;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =13) WHERE BNO =13;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =14) WHERE BNO =14;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =15) WHERE BNO =15;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =16) WHERE BNO =16;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =17) WHERE BNO =17;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =18) WHERE BNO =18;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =19) WHERE BNO =19;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =20) WHERE BNO =20;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =21) WHERE BNO =21;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =22) WHERE BNO =22;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =23) WHERE BNO =23;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =24) WHERE BNO =24;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =25) WHERE BNO =25;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =26) WHERE BNO =26;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =27) WHERE BNO =27;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =28) WHERE BNO =28;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =29) WHERE BNO =29;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =30) WHERE BNO =30;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =31) WHERE BNO =31;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =32) WHERE BNO =32;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =33) WHERE BNO =33;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =34) WHERE BNO =34;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =35) WHERE BNO =35;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =36) WHERE BNO =36;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =37) WHERE BNO =37;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =38) WHERE BNO =38;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =39) WHERE BNO =39;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =40) WHERE BNO =40;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =41) WHERE BNO =41;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =42) WHERE BNO =42;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =43) WHERE BNO =43;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =44) WHERE BNO =44;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =45) WHERE BNO =45;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =46) WHERE BNO =46;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =47) WHERE BNO =47;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =48) WHERE BNO =48;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =49) WHERE BNO =49;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =50) WHERE BNO =50;
UPDATE TOURBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM TOURREPLY WHERE BNO =51) WHERE BNO =51;

------------------------------------------------
--------------- TOUR 관광데이터 테이블 ----------------
------------------------------------------------


------------------------------------------------
--------------- PRF 공연데이터 테이블 ----------------
------------------------------------------------
create table performance(
    pid          VARCHAR(100),
    conhallid      VARCHAR(100),
    pname          VARCHAR(100),
    pfrom          VARCHAR(100),
    pto          VARCHAR(100),
    fname          VARCHAR(100),
    pcast          VARCHAR(500),
    pcrew          VARCHAR(500),
    pruntime      VARCHAR(100),
    prfage      VARCHAR(100),    
    producer      VARCHAR(100),
    price          VARCHAR(500),
    poster      VARCHAR(500),    
    pgenre      VARCHAR(100),    
    pstate      VARCHAR(100),    
    visit          VARCHAR(100),
    child          VARCHAR(100),
    img1          VARCHAR(500),    
    img2          VARCHAR(500),    
    img3          VARCHAR(500),    
    img4          VARCHAR(500),    
    img5         VARCHAR(500),    
    ptime          VARCHAR(500),
    awards      VARCHAR(500),    
    rate          DOUBLE,
    primary key (pid)
);

select * from performance;

------------------------------------------------
--------------- TICKETING 예매 테이블 ----------------
------------------------------------------------


CREATE TABLE PRF_RESERVE(
	RESERVENO INT PRIMARY KEY AUTO_INCREMENT, 
    PNAME VARCHAR(100), 
    mNO INT, 
    SEATCOUNT INT, -- 좌석수량
    SEATTYPE VARCHAR(100), -- 좌석타입
    PAYTYPE VARCHAR(20), -- 결제수단
    RESERVETIME DATETIME DEFAULT CURRENT_TIMESTAMP
);
DESC PRF_RESERVE;





----------------------------------- DML 시작-------------------------------------------
-- 공연 리뷰
SELECT  B.BNO, B.RATINGS, B.PNAME, B.TITLE, M.ID, M.NAME, B.READCOUNT, B.ATTACHCOUNT, B.REPLYCOUNT, B.CREATE_DATE
		FROM PRFBOARD B
		JOIN MEMBER M ON (B.MNO = M.MNO)
		WHERE 
			B.STATUS = 'Y'
		-- AND M.NAME LIKE '%관리자%'
		-- AND B.TITLE LIKE '%최고%';
		-- AND B.CONTENT LIKE '%공감%';
	-- ORDER BY B.BNO DESC 
    -- ORDER BY B.READCOUNT DESC 
    ORDER BY B.REPLYCOUNT DESC 
    LIMIT 10 OFFSET 0;

-- 상단에 표시할 조회수1위 리뷰글 조회하기
SELECT * FROM (
		SELECT 
		B.BNO, M.ID, M.NAME, B.TITLE, B.CONTENT, B.RATINGS, 
		B.READCOUNT, B.ATTACHCOUNT, B.REPLYCOUNT, B.CREATE_DATE, B.MODIFY_DATE, 
        ROW_NUMBER() OVER (ORDER BY B.READCOUNT DESC) AS 'RANKING'
		FROM PRFBOARD B
		JOIN MEMBER M ON (B.MNO = M.MNO)
		WHERE B.STATUS = 'Y') RANKED
	WHERE RANKED.RANKING = 1;
        


SELECT COUNT(*)
		FROM PRFBOARD B
		JOIN MEMBER M ON (B.MNO = M.MNO)
		WHERE 
			B.STATUS = 'Y'
		AND M.NAME LIKE '%관리자%' 
		-- AND B.TITLE LIKE '%%'
		-- AND B.CONTENT LIKE '%%' 
		;
SELECT  
		B.BNO, M.ID, M.NAME, B.TITLE, B.CONTENT, B.RATINGS, 
		B.READCOUNT, B.ATTACHCOUNT, B.REPLYCOUNT, B.CREATE_DATE, B.MODIFY_DATE
		FROM PRFBOARD B
		JOIN MEMBER M ON (B.MNO = M.MNO)
		WHERE B.STATUS = 'Y' AND B.BNO = 51;
	
INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) 
			VALUES(0, 3, '레미제라블', 'TESTING', 'TESTCONTENT', 5);
-- 리뷰글 작성 이후 평점정보를 바로 저장해주는 코드 필요

UPDATE PRFBOARD SET 
			TITLE='MOD', CONTENT='MODCONTENT', RATINGS=3, MODIFY_DATE = CURRENT_TIMESTAMP
		WHERE bNO = 51;

UPDATE PRFBOARD SET 
			READCOUNT = 2
		WHERE bNO = 51;

UPDATE PRFBOARD SET 
			STATUS = 'N' 
		WHERE bNO = 51;

SELECT 
			fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE FROM PRFBOARD_ATTACH_FILE
		WHERE FNO = 1;
        
SELECT 
			fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE FROM PRFBOARD_ATTACH_FILE
		WHERE BNO = 10;
        
INSERT INTO PRFBOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) 
		VALUES(1, 10, 'testfile', 'testfilerename', DEFAULT);

UPDATE PRFBOARD 
		SET 
			ATTACHCOUNT = (SELECT COUNT(*) FROM PRFBOARD_ATTACH_FILE WHERE BNO = 10) 
		WHERE BNO = 10;

DELETE FROM PRFBOARD_ATTACH_FILE WHERE FNO = 1;        

INSERT INTO PRFREPLY(
			RNO, BNO, MNO, 
			CONTENT, STATUS, CREATE_DATE, MODIFY_DATE) 
		VALUES(
			default, 10, 5, 'test reply', 
			default, default, default
		);
    
SELECT
			R.RNO, R.BNO, R.CONTENT, M.ID, M.NAME, R.CREATE_DATE, R.MODIFY_DATE
		FROM PRFREPLY R
		JOIN MEMBER M ON(R.MNO = M.MNO)
		WHERE R.STATUS='Y' AND BNO = 10
		ORDER BY R.RNO DESC;

DELETE FROM PRFREPLY WHERE RNO = 55;

-- 댓글 수 갱신해주는 쿼리
UPDATE PRFBOARD SET REPLYCOUNT = (SELECT COUNT(*) FROM PRFREPLY WHERE BNO = 1) WHERE BNO = 1;
SELECT COUNT(*) FROM PRFREPLY
	WHERE BNO = 1;
SELECT * FROM PRFBOARD WHERE BNO = 1;

-- 공연의 평균 평점 조회하는 쿼리
SELECT AVG(RATINGS) FROM PRFBOARD WHERE PNAME = '몬테크리스토';
-- UPDATE performance SET RATE = (SELECT AVG(RATINGS) FROM PRFBOARD WHERE PNAME = '몬테크리스토') WHERE PNAME = '몬테크리스토';
USE SEMIPROJECT;
INSERT INTO PERFORMANCE (PID, PNAME) VALUES (1, '몬테크리스토');
SELECT * FROM PERFORMANCE;







