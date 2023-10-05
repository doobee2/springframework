CREATE DATABASE teaspoon;

USE teaspoon;

CREATE TABLE sample(
NO INTEGER auto_increment PRIMARY KEY,
NAME VARCHAR(100));

INSERT INTO sample VALUES (DEFAULT, '일슬비');
INSERT INTO sample VALUES (DEFAULT, '이슬비');
INSERT INTO sample VALUES (DEFAULT, '삼슬비');

COMMIT;
COMMIT;
COMMIT;

-- 게시판 테이블 --
CREATE TABLE board(
seq INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
content VARCHAR(1000) NOT NULL,
nickname VARCHAR(20),
regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
visited INT DEFAULT 0
);

-- 문의게시판
CREATE TABLE qna(
	qno INT PRIMARY KEY AUTO_INCREMENT,   -- (문의번호) 자동발생
	title VARCHAR(100) NOT NULL,   -- (문의 제목)
	content VARCHAR(1000) NOT NULL,   -- (문의 내용)
	author VARCHAR(16),   -- (문의 작성자)
	regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),   -- (문의 등록)
	cnt INT DEFAULT 0,   -- (조회수)
	lev INT DEFAULT 0, -- 질문(0), 답변(1)
	par INT DEFAULT 0	-- 부모 글번호 -> 질문(자신 레코드의 qno), 답변(질문의 글번호)
);


INSERT INTO board VALUES(DEFAULT, '스프링 게시판 제목1 입니다.','이곳에 내용을 적어주세요.','관리자',DEFAULT,DEFAULT);
INSERT INTO board VALUES(DEFAULT, '스프링 게시판 제목2 입니다.','이곳에 내용을 적어주세요.','관리자',DEFAULT,DEFAULT);
INSERT INTO board VALUES(DEFAULT, '스프링 게시판 제목3 입니다.','이곳에 내용을 적어주세요.','관리자',DEFAULT,DEFAULT);
INSERT INTO board VALUES(DEFAULT, '스프링 게시판 제목4 입니다.','이곳에 내용을 적어주세요.','관리자',DEFAULT,DEFAULT);
INSERT INTO board VALUES(DEFAULT, '스프링 게시판 제목5 입니다.','이곳에 내용을 적어주세요.','관리자',DEFAULT,DEFAULT);


-- 회원 테이블 --
CREATE TABLE member(
id VARCHAR(20) PRIMARY KEY,
pw VARCHAR(300) NOT NULL,
NAME VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
tel VARCHAR(20) NOT NULL,
addr1 VARCHAR(200),
addr2 VARCHAR(100),
postcode VARCHAR(10),
regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
birth DATE,
pt INT DEFAULT 0,
visited INT DEFAULT 0
);

INSERT INTO member VALUES('admin', 1234, '관리자', 'admin@teaspoon.com', '010-1234-5678', '', '', '', DEFAULT, NULL, DEFAULT, DEFAULT)
INSERT INTO member VALUES('lee1', 1234, '일슬비', 'lee1@teaspoon.com', '010-1004-1004', '', '', '', DEFAULT, NULL, DEFAULT, DEFAULT)
INSERT INTO member VALUES('lee2', 1234, '이슬비', 'lee2@teaspoon.com', '010-1004-1004', '', '', '', DEFAULT, NULL, DEFAULT, DEFAULT)
INSERT INTO member VALUES('lee3', 1234, '삼슬비', 'lee3@teaspoon.com', '010-1004-1004', '', '', '', DEFAULT, NULL, DEFAULT, DEFAULT)

SELECT * FROM member;


COMMIT;
COMMIT;
COMMIT;


UPDATE member SET pw='$2a$10$oKnBkF9i2ns0PDmrEZy6AODkQSG1GGtjcBAbAHgyUnI.mjFDMBELi' WHERE id='admin'


-- free
CREATE TABLE free(
	fno INT PRIMARY KEY AUTO_INCREMENT,   -- (게시글 번호) 자동 발생
	title VARCHAR(200) NOT NULL,   -- (게시글 제목)
	content VARCHAR(1500),   -- (게시글 내용)
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP,   -- (등록일)
	visited INT DEFAULT 0,   -- (조회수)		
	author VARCHAR(20) NOT NULL,   -- (작성자)
	rec INT DEFAULT 0   -- (추천수)
);

INSERT INTO free VALUES(DEFAULT, 'ddd', 'ddd', DEFAULT, DEFAULT, 'admin', DEFAULT)

SELECT * FROM free;
COMMIT;
COMMIT;
COMMIT;


DESC free;
DESC dat;
SELECT * FROM dat;




-- 댓글
CREATE TABLE dat(
	dno INT PRIMARY KEY AUTO_INCREMENT,   -- (댓글번호) 자동발생
	author VARCHAR(16) NOT NULL,   -- (댓글 작성자)
	content VARCHAR(1000) NOT NULL,   -- (댓글 내용)
	regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (댓글 등록일)
	par INT(11) NOT NULL   -- (해당 게시글 번호)
);


SELECT * FROM free;

INSERT INTO dat VALUES(DEFAULT, 'admin', '댓글댓글 적어보자', DEFAULT, 3)


        select * from dat where par = 3 order by regdate desc;

SELECT * FROM free f, dat d WHERE f.fno = d.par



CREATE TABLE filetb(NO INT AUTO_INCREMENT PRIMARY KEY,  -- 번호
articleno varchar(45) DEFAULT NULL,
saveFolder varchar(45) DEFAULT NULL,
originFile varchar(45) DEFAULT NULL,
saveFile varchar(45) DEFAULT NULL
);

CREATE TABLE guestbook (
  articleno int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userid varchar(16) NOT NULL,
  subject varchar(100) NOT NULL,
  content varchar(2000) NOT NULL,
  regtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
