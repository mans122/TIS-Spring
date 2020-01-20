
/* Drop Triggers */

DROP TRIGGER TRI_board2_bno;
DROP TRIGGER TRI_board_bno;



/* Drop Tables */

DROP TABLE board2 CASCADE CONSTRAINTS;
DROP TABLE oderdetail CASCADE CONSTRAINTS;
DROP TABLE goods CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE member2 CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_board2_bno;
DROP SEQUENCE SEQ_board_bno;




/* Create Sequences */

CREATE SEQUENCE SEQ_board2_bno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_board_bno INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE board2
(
	-- 게시글 번호
	bno number NOT NULL,
	-- 회원아이디
	id varchar2(20) NOT NULL,
	-- 게시글 제목
	title varchar2(50) NOT NULL,
	-- 게시글 내용
	content varchar2(1000) NOT NULL,
	PRIMARY KEY (bno)
);


CREATE TABLE goods
(
	-- 상품번호 연월일 일련번호의 조합
	code char(12) NOT NULL,
	-- 상품 이름
	name varchar2(20) NOT NULL,
	-- 현재시점 상품 가격
	price number NOT NULL,
	PRIMARY KEY (code)
);


CREATE TABLE member2
(
	-- 회원아이디
	id varchar2(20) NOT NULL,
	-- 회원 이름
	name varchar2(20) NOT NULL,
	-- 회원 비밀번호
	pw varchar2(30) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE oderdetail
(
	-- 주문번호  년월일(8자리) + 카테고리 번호(4자리)+일련번호(8자리)
	-- 
	ono char(20) NOT NULL,
	-- 상품번호 연월일 일련번호의 조합
	code char(12) NOT NULL,
	gea number DEFAULT 1,
	PRIMARY KEY (ono, code)
);


CREATE TABLE orders
(
	-- 주문번호  년월일(8자리) + 카테고리 번호(4자리)+일련번호(8자리)
	-- 
	ono char(20) NOT NULL,
	-- 회원아이디
	id varchar2(20) NOT NULL,
	PRIMARY KEY (ono)
);



/* Create Foreign Keys */

ALTER TABLE oderdetail
	ADD FOREIGN KEY (code)
	REFERENCES goods (code)
;


ALTER TABLE board2
	ADD FOREIGN KEY (id)
	REFERENCES member2 (id)
;


ALTER TABLE orders
	ADD FOREIGN KEY (id)
	REFERENCES member2 (id)
;


ALTER TABLE oderdetail
	ADD FOREIGN KEY (ono)
	REFERENCES orders (ono)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_board2_bno BEFORE INSERT ON board2
FOR EACH ROW
BEGIN
	SELECT SEQ_board2_bno.nextval
	INTO :new.bno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_board_bno BEFORE INSERT ON board
FOR EACH ROW
BEGIN
	SELECT SEQ_board_bno.nextval
	INTO :new.bno
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN board2.bno IS '게시글 번호';
COMMENT ON COLUMN board2.id IS '회원아이디';
COMMENT ON COLUMN board2.title IS '게시글 제목';
COMMENT ON COLUMN board2.content IS '게시글 내용';
COMMENT ON COLUMN goods.code IS '상품번호 연월일 일련번호의 조합';
COMMENT ON COLUMN goods.name IS '상품 이름';
COMMENT ON COLUMN goods.price IS '현재시점 상품 가격';
COMMENT ON COLUMN member2.id IS '회원아이디';
COMMENT ON COLUMN member2.name IS '회원 이름';
COMMENT ON COLUMN member2.pw IS '회원 비밀번호';
COMMENT ON COLUMN oderdetail.ono IS '주문번호  년월일(8자리) + 카테고리 번호(4자리)+일련번호(8자리)
';
COMMENT ON COLUMN oderdetail.code IS '상품번호 연월일 일련번호의 조합';
COMMENT ON COLUMN orders.ono IS '주문번호  년월일(8자리) + 카테고리 번호(4자리)+일련번호(8자리)
';
COMMENT ON COLUMN orders.id IS '회원아이디';



