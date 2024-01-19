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
    FAVORITEGENRE 	 VARCHAR(100),
    KAKAOTOKEN	VARCHAR(1000),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'admin', '1234', 'ROLE_ADMIN', '관리자', 
    '010-1234-4341', 'admin@test.com', '서울시 강남구 역삼동', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test1', '1234', DEFAULT, '실험멤버1', 
    '010-1234-4341', 'member1@test.com', '서울시 종로', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test2', '1234', DEFAULT, '실험멤버2', 
    '010-1234-4341', 'member2@test.com', '서울시 신촌', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test3', '1234', DEFAULT, '실험멤버3', 
    '010-1234-4341', 'member3@test.com', '서울시 송파', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test4', '1234', DEFAULT, '실험멤버4', 
    '010-1234-4341', 'member4@test.com', '서울시 관악', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test5', '1234', DEFAULT, '실험멤버5', 
    '010-1234-4341', 'member5@test.com', '인천 송도', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test6', '1234', DEFAULT, '실험멤버6', 
    '010-1234-4341', 'member5@test.com', '인천 송도', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test7', '1234', DEFAULT, '실험멤버7', 
    '010-1234-4341', 'member5@test.com', '인천 송도', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test8', '1234', DEFAULT, '실험멤버8', 
    '010-1234-4341', 'member5@test.com', '인천 송도', DEFAULT,DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, FAVORITEGENRE,  KAKAOTOKEN, 
    STATUS,  ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test9', '1234', DEFAULT, '실험멤버9', 
    '010-1234-4341', 'member9@test.com', '인천 송도', DEFAULT,DEFAULT, DEFAULT,
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
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_PRFBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_PRFBOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
);

INSERT INTO PRFBOARD (bNO, mNO, PNAME, TITLE, CONTENT, RATINGS) VALUES(0,2,'몬테크리스토','정말 추천하고 응원하는 뮤지컬 :)','뮤지컬 몬테크리스토를 보기 위해 티켓팅날 예매를 하고 엄마와 함께 공연을 보러 갔었습니다.많은 배우님들이 연기를 하시는데 김성철 배우님의 몬테크리스토 백작이 보고싶어서 이 날로 예매했었어요.뮤지컬 몬테크리스토는 처음 보는 공연', 5);
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
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_TOURBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_TOURBOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
);
INSERT INTO TOURBOARD (bNO, mNO, T_TITLE, TITLE, CONTENT, RATINGS) VALUES (0, 1, '경복궁', '서울의 심장', '경복궁은 역사적으로 서울의 심장이라 할 수 있다', 5);

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



------------------------------------------------
--------------- TOUR 관광데이터 테이블 ----------------
------------------------------------------------


------------------------------------------------
--------------- PRF 공연데이터 테이블 ----------------
------------------------------------------------


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
SELECT  B.BNO, B.RATINGS, B.PNAME, B.TITLE, M.ID, M.NAME, B.READCOUNT, B.ATTACHCOUNT, B.CREATE_DATE
		FROM PRFBOARD B
		JOIN MEMBER M ON (B.MNO = M.MNO)
		WHERE 
			B.STATUS = 'Y'
		AND M.NAME LIKE '%관리자%'
		-- AND B.TITLE LIKE '%최고%';
		-- AND B.CONTENT LIKE '%공감%';
	ORDER BY B.BNO DESC LIMIT 10 OFFSET 1;

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
		B.READCOUNT, B.ATTACHCOUNT, B.CREATE_DATE, B.MODIFY_DATE
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





