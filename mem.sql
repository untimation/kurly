--  estore DB (스키마)를 만들어라
CREATE DATABASE signup;   

-- UTF-8mb4 문자 세트와 utf8mb4_unicode_ci 콜레이션을 사용하는 것이 일반적으로 가장 권장되는 방법  (다양한 언어와 이모티콘 등의 문자를 지원)
CREATE DATABASE signup CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 확인
show databases;


-- estore DB를 사용하겠다.
USE signup;

-- member table이 있다면 삭제해라 
DROP TABLE IF EXISTS mem;

-- mem 테이블을 ~~이런이런 조건(데이터 타입)으로 만들어라
CREATE TABLE mem (
  userid VARCHAR(30),
  pwd VARCHAR(30),
  username VARCHAR(30),
  email VARCHAR(30),
  phone VARCHAR(30),
  admin TINYINT DEFAULT 1, -- 0: 일반회원, 1: 관리자
  ymd VARCHAR(10),
  PRIMARY KEY(userid)
);

-- 테이블의 구조를 확인 
SHOW COLUMNS FROM mem;

-- 테이블의 구조를 확인 
DESC mem;

-- 테이블 확인
show tables;

-- insert문    
INSERT INTO mem(username, email, userid, pwd, phone, ymd, admin)
VALUES('성윤정', 'pinksung@nate.com', 'qwer','1234', '010-1234-2345', '990215', 1);

INSERT INTO mem(username, email, userid, pwd, phone, ymd, admin)
VALUES('홍길동', 'city@nate.com', 'asdf', '1234', '010-2233-4455', '806218', 0);

INSERT INTO mem(username, email, userid, pwd, phone, ymd, admin)
VALUES('임꺽정', 'forest@nate.com', 'zxcv', '1234', '010-8855-7799', '781210', 0);

INSERT INTO mem(username, email, userid, pwd, phone, ymd, admin)
VALUES('장보고', 'sea@nate.com', 'wasd', '1234', '010-1212-8989', '021010', 0);


commit; -- 영구 저장

select *from mem;  

-- 검색
SELECT * FROM mem WHERE num = 1;


-- update
UPDATE mem SET email = 'dino@naver.com'  WHERE num = 2;


-- 정렬
SELECT * FROM mem ORDER BY username;
SELECT * FROM mem ORDER BY email;

-- 이름역순 정렬
SELECT * FROM mem ORDER BY num DESC;

-- 삭제
DELETE FROM mem WHERE admin = 1 ;

--  테이블 삭제 
drop table mem;

show tables;

DROP TABLE IF EXISTS board;

-- board 테이블을 ~~이런이런 조건(데이터 타입)으로 만들어라
CREATE TABLE board (
  num INT AUTO_INCREMENT PRIMARY KEY,
  pass VARCHAR(30),
  username VARCHAR(30),
  email VARCHAR(30),
  title VARCHAR(50),
  content VARCHAR(1000),
  readcount INT DEFAULT 0,
  writedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SHOW COLUMNS FROM board;

-- 테이블의 구조를 확인 
DESC board;

-- 테이블 확인
show tables;

-- insert문    
INSERT INTO board(username, email, pass, title, content)
VALUES('성윤정', 'pinksung@nate.com', '1234', '첫방문', '반갑습니다.');

INSERT INTO board(username, email, pass, title, content)
VALUES('홍길동', 'city@nate.com', '1234', '강원도', '눈이 많이 와요.');

INSERT INTO board(username, email, pass, title, content)
VALUES('임꺽정', 'forest@nate.com', '1234', '경기도', '숲속공원이요');

INSERT INTO board(username, email, pass, title, content)
VALUES('장보고', 'sea@nate.com', '1234', '제주도', '바다가 보여요.');


commit; -- 영구 저장

select *from board;  

-- 검색
SELECT * FROM board WHERE num = 1;


-- update
UPDATE board SET email = 'dino@naver.com'  WHERE num = 2;


-- 정렬
SELECT * FROM board ORDER BY username;
SELECT * FROM board ORDER BY email;

-- 이름역순 정렬
SELECT * FROM board ORDER BY title DESC;

-- 삭제
DELETE FROM board WHERE num = 5 ;

--  테이블 삭제 
drop table board;

show tables;


-- signup DB 삭제해라 
DROP DATABASE IF EXISTS signup;

-- product DB 삭제해라 
DROP TABLE IF EXISTS product;

-- product 테이블을 ~~이런이런 조건(데이터 타입)으로 만들어라
CREATE TABLE product (
  code INT AUTO_INCREMENT PRIMARY KEY,
  productname VARCHAR(100),
  price DECIMAL(8, 2),
  pictureurl VARCHAR(50),
  description VARCHAR(1000)
);

-- 테이블의 구조를 확인 
SHOW COLUMNS FROM product;

-- 테이블의 구조를 확인 
DESC product;

-- 테이블 확인
show tables;

-- insert문    
INSERT INTO product (productname, price, pictureurl, description)
VALUES ('머스크 멜론 1.6kg', 7990, 'db.jpg', '일론 머스크도 인정(하지않)한 꿀이 담(기지않)은 맛좋은 멜론..');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('소불고기 전골', 12900, 'html5.jpg', '뜨끈하고 고기 듬뿍 건강한 소불고기..');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('농심 컵라면 7종', 4490, 'oracle.jpg', '농심의 인기있는 컵라면을 종류별로..');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('양념 소불고기 1kg', 16712, 'mysql.jpg', '고기를 더욱더 맛있게..');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('[소반옥] 인기냉면 2종', 6300, 'jquery.jpg', '소스 하나로 물냉과 비냉까지..');


commit; -- 영구 저장

select *from product;  

-- 검색
SELECT * FROM product WHERE code = 1;


-- update
UPDATE product SET price = 99000  WHERE code = 2;


-- 정렬
SELECT * FROM product ORDER BY price;
SELECT * FROM product ORDER BY productname;

-- 이름역순 정렬
SELECT * FROM product ORDER BY price DESC;

-- 삭제
DELETE FROM product WHERE code = 3 ;

--  테이블 삭제 
drop table product;

show tables;


