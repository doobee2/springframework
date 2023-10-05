CREATE DATABASE haebeop;

USE haebeop;

CREATE TABLE test(
	num INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL
);

INSERT INTO test VALUES (DEFAULT, '테스트제목1');
INSERT INTO test VALUES (DEFAULT, '테스트제목2');
INSERT INTO test VALUES (DEFAULT, '테스트제목3');
INSERT INTO test VALUES (DEFAULT, '테스트제목4');
INSERT INTO test VALUES (DEFAULT, '테스트제목5');

SELECT * from test;

SELECT * from emp;

CREATE TABLE user(
	id VARCHAR(20) PRIMARY KEY,   -- (아이디)
	pw VARCHAR(350) NOT NULL,   -- (비밀번호)
	NAME VARCHAR(50) NOT NULL,   -- (이름)
	email VARCHAR(150) NOT NULL,   -- (이메일)
	tel VARCHAR(20),   -- (전화번호)
	addr1 VARCHAR(200),
	addr2 VARCHAR(200),
	postcode VARCHAR(20),
	regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- (가입일)
	birth DATE DEFAULT CURRENT_DATE, -- 생일
	pt INT DEFAULT 0,   -- (포인트)
	visited INT DEFAULT 0
);