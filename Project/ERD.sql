
/* Drop Triggers */

DROP TRIGGER TRI_area_a_no;
DROP TRIGGER TRI_tbl_concert_actor_a_no;
DROP TRIGGER TRI_tbl_musical_actor_a_no;
DROP TRIGGER TRI_tbl_musical_m_no;
DROP TRIGGER TRI_tbl_musical_reply_r_no;
DROP TRIGGER TRI_tbl_musical_reply_s_no;
DROP TRIGGER TRI_tbl_notice_n_no;
DROP TRIGGER TRI_tbl_show_actor_a_no;
DROP TRIGGER TRI_tbl_show_reply_r_no;
DROP TRIGGER TRI_tbl_show_reply_s_no;



/* Drop Tables */

DROP TABLE area CASCADE CONSTRAINTS;
DROP TABLE tbl_board_attach CASCADE CONSTRAINTS;
DROP TABLE tbl_board_reply CASCADE CONSTRAINTS;
DROP TABLE tbl_board CASCADE CONSTRAINTS;
DROP TABLE tbl_concert_actor CASCADE CONSTRAINTS;
DROP TABLE tbl_musical_reply CASCADE CONSTRAINTS;
DROP TABLE tbl_show_attach CASCADE CONSTRAINTS;
DROP TABLE tbl_concert CASCADE CONSTRAINTS;
DROP TABLE tbl_member_auth CASCADE CONSTRAINTS;
DROP TABLE tbl_member CASCADE CONSTRAINTS;
DROP TABLE tbl_musical_actor CASCADE CONSTRAINTS;
DROP TABLE tbl_musical_attach CASCADE CONSTRAINTS;
DROP TABLE tbl_musical_reply CASCADE CONSTRAINTS;
DROP TABLE tbl_musical CASCADE CONSTRAINTS;
DROP TABLE tbl_notice CASCADE CONSTRAINTS;
DROP TABLE tbl_qna_reply CASCADE CONSTRAINTS;
DROP TABLE tbl_qna CASCADE CONSTRAINTS;
DROP TABLE tbl_show_actor CASCADE CONSTRAINTS;
DROP TABLE tbl_show_attach CASCADE CONSTRAINTS;
DROP TABLE tbl_show_reply CASCADE CONSTRAINTS;
DROP TABLE tbl_show CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_area_a_no;
DROP SEQUENCE SEQ_tbl_concert_actor_a_no;
DROP SEQUENCE SEQ_tbl_musical_actor_a_no;
DROP SEQUENCE SEQ_tbl_musical_m_no;
DROP SEQUENCE SEQ_tbl_musical_reply_r_no;
DROP SEQUENCE SEQ_tbl_musical_reply_s_no;
DROP SEQUENCE SEQ_tbl_notice_n_no;
DROP SEQUENCE SEQ_tbl_show_actor_a_no;
DROP SEQUENCE SEQ_tbl_show_reply_r_no;
DROP SEQUENCE SEQ_tbl_show_reply_s_no;




/* Create Sequences */

CREATE SEQUENCE SEQ_area_a_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_concert_actor_a_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_musical_actor_a_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_musical_m_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_musical_reply_r_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_musical_reply_s_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_notice_n_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_show_actor_a_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_show_reply_r_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_tbl_show_reply_s_no INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE area
(
	a_no number NOT NULL,
	a_address varchar2(100) NOT NULL,
	a_lat float NOT NULL,
	a_lon float NOT NULL,
	a_sido float NOT NULL,
	-- 마커 좌표
	-- 
	a_sigungu float NOT NULL,
	s_no number,
	c_no number,
	m_no number,
	PRIMARY KEY (a_no)
);


CREATE TABLE tbl_board
(
	b_no number NOT NULL,
	title varchar2(200) NOT NULL,
	content varchar2(3000) NOT NULL,
	writer varchar2(50) NOT NULL,
	reg_date date NOT NULL,
	update_date date,
	reply_cnt number,
	view_cnt number,
	PRIMARY KEY (b_no)
);


CREATE TABLE tbl_board_attach
(
	b_no number NOT NULL,
	uuid varchar2(100) NOT NULL,
	uploadpath varchar2(200) NOT NULL,
	filename varchar2(100) NOT NULL,
	filetype char NOT NULL,
	bno number(10,0) NOT NULL
);


CREATE TABLE tbl_board_reply
(
	r_no number NOT NULL,
	b_no number NOT NULL,
	reply varchar2(1000) NOT NULL,
	replyer varchar2(50) NOT NULL,
	reply_date date NOT NULL,
	update_date date,
	PRIMARY KEY (r_no)
);


CREATE TABLE tbl_concert
(
	c_no number NOT NULL,
	c_name varchar2(50) NOT NULL,
	c_s_date date NOT NULL,
	c_e_date date NOT NULL,
	c_actor varchar2(200) NOT NULL,
	c_director varchar2(200),
	c_sell_link varchar2(200),
	c_genre varchar2(50) NOT NULL,
	c_class varchar2(20) NOT NULL,
	c_content varchar2(3000) NOT NULL,
	c_reply_cnt number DEFAULT 0,
	c_view_cnt number DEFAULT 0,
	PRIMARY KEY (c_no)
);


CREATE TABLE tbl_concert_actor
(
	a_no number NOT NULL,
	c_no number NOT NULL,
	actor_name varchar2(20) NOT NULL,
	uuid varchar2(100) NOT NULL,
	upload_path varchar2(200) NOT NULL,
	file_name varchar2(100) NOT NULL,
	PRIMARY KEY (a_no)
);


CREATE TABLE tbl_member
(
	user_id varchar2(50) NOT NULL,
	user_pw varchar2(50) NOT NULL,
	user_name varchar2(30) NOT NULL,
	reg_date date DEFAULT sysdate NOT NULL,
	update_date date DEFAULT sysdate,
	usere_mail varchar2(50),
	user_address varchar2(100),
	user_phone char(14),
	PRIMARY KEY (user_id)
);


CREATE TABLE tbl_member_auth
(
	user_id varchar2(50) NOT NULL,
	auth varchar2(50) NOT NULL
);


CREATE TABLE tbl_musical
(
	m_no number NOT NULL,
	m_name varchar2(50) NOT NULL,
	m_s_date date NOT NULL,
	m_e_date date NOT NULL,
	m_actor varchar2(200) NOT NULL,
	m_director varchar2(200),
	m_sell_link varchar2(200),
	m_genre varchar2(30) NOT NULL,
	m_class nvarchar2(20) NOT NULL,
	m_content varchar2(3000) NOT NULL,
	m_reply_cnt number,
	m_view_cnt number,
	PRIMARY KEY (m_no)
);


CREATE TABLE tbl_musical_actor
(
	a_no number NOT NULL,
	m_no number NOT NULL,
	actor_name varchar2(20) NOT NULL,
	uuid varchar2(100) NOT NULL,
	upload_path varchar2(200) NOT NULL,
	file_name varchar2(100) NOT NULL,
	PRIMARY KEY (a_no)
);


CREATE TABLE tbl_musical_attach
(
	m_no number NOT NULL,
	uuid varchar2(100) NOT NULL,
	upload_path varchar2(200) NOT NULL,
	file_name varchar2(100) NOT NULL
);


CREATE TABLE tbl_musical_reply
(
	r_no number NOT NULL,
	m_no number NOT NULL,
	reply varchar2(1000) NOT NULL,
	replyer varchar2(50) NOT NULL,
	reply_date date DEFAULT sysdate NOT NULL,
	update_date date DEFAULT systdate,
	PRIMARY KEY (r_no)
);


CREATE TABLE tbl_musical_reply
(
	r_no number NOT NULL,
	c_no number NOT NULL,
	reply varchar2(1000) NOT NULL,
	replyer varchar2(50) NOT NULL,
	reply_date date DEFAULT sysdate NOT NULL,
	update_date date DEFAULT systdate,
	PRIMARY KEY (r_no)
);


CREATE TABLE tbl_notice
(
	n_no number NOT NULL,
	n_writer varchar2(50) NOT NULL,
	n_content varchar2(3000) NOT NULL,
	n_regdate date NOT NULL,
	PRIMARY KEY (n_no)
);


CREATE TABLE tbl_qna
(
	q_no number NOT NULL,
	title varchar2(200) NOT NULL,
	content varchar2(3000) NOT NULL,
	writer varchar2(50) NOT NULL,
	reg_date date NOT NULL,
	update_date date,
	reply_cnt number,
	view_cnt number,
	PRIMARY KEY (q_no)
);


CREATE TABLE tbl_qna_reply
(
	r_no number NOT NULL,
	q_no number NOT NULL,
	reply varchar2(1000) NOT NULL,
	replyer varchar2(50) NOT NULL,
	reply_date date NOT NULL,
	update_date date,
	PRIMARY KEY (r_no)
);


CREATE TABLE tbl_show
(
	s_no number NOT NULL,
	s_name varchar2(50) NOT NULL,
	-- 
	-- 
	s_s_date date NOT NULL,
	s_e_date date NOT NULL,
	s_actor varchar2(200) NOT NULL,
	s_director varchar2(200),
	s_sell_link varchar2(200),
	s_genre varchar2(50) NOT NULL,
	s_class varchar2(20) NOT NULL,
	s_content varchar2(3000) NOT NULL,
	s_reply_cnt number,
	s_view_cnt number,
	PRIMARY KEY (s_no)
);


CREATE TABLE tbl_show_actor
(
	a_no number NOT NULL,
	s_no number NOT NULL,
	actor_name varchar2(20) NOT NULL,
	uuid varchar2(100) NOT NULL,
	upload_path varchar2(200) NOT NULL,
	file_name varchar2(100) NOT NULL,
	PRIMARY KEY (a_no)
);


CREATE TABLE tbl_show_attach
(
	s_no number NOT NULL,
	uuid varchar2(100),
	file_name varchar2(100),
	upload_path varchar2(200)
);


CREATE TABLE tbl_show_attach
(
	c_no number NOT NULL,
	uuid varchar2(100) NOT NULL,
	upload_path varchar2(200) NOT NULL,
	file_name varchar2(100) NOT NULL
);


CREATE TABLE tbl_show_reply
(
	r_no number NOT NULL,
	s_no number NOT NULL,
	reply varchar2(1000) NOT NULL,
	replyer varchar2(50) NOT NULL,
	reply_date date DEFAULT sysdate NOT NULL,
	update_date date DEFAULT systdate,
	PRIMARY KEY (r_no)
);



/* Create Foreign Keys */

ALTER TABLE tbl_board_attach
	ADD FOREIGN KEY (b_no)
	REFERENCES tbl_board (b_no)
;


ALTER TABLE tbl_board_reply
	ADD FOREIGN KEY (b_no)
	REFERENCES tbl_board (b_no)
;


ALTER TABLE area
	ADD FOREIGN KEY (c_no)
	REFERENCES tbl_concert (c_no)
;


ALTER TABLE tbl_concert_actor
	ADD FOREIGN KEY (c_no)
	REFERENCES tbl_concert (c_no)
;


ALTER TABLE tbl_musical_reply
	ADD FOREIGN KEY (c_no)
	REFERENCES tbl_concert (c_no)
;


ALTER TABLE tbl_show_attach
	ADD FOREIGN KEY (c_no)
	REFERENCES tbl_concert (c_no)
;


ALTER TABLE tbl_member_auth
	ADD FOREIGN KEY (user_id)
	REFERENCES tbl_member (user_id)
;


ALTER TABLE area
	ADD FOREIGN KEY (m_no)
	REFERENCES tbl_musical (m_no)
;


ALTER TABLE tbl_musical_actor
	ADD FOREIGN KEY (m_no)
	REFERENCES tbl_musical (m_no)
;


ALTER TABLE tbl_musical_attach
	ADD FOREIGN KEY (m_no)
	REFERENCES tbl_musical (m_no)
;


ALTER TABLE tbl_musical_reply
	ADD FOREIGN KEY (m_no)
	REFERENCES tbl_musical (m_no)
;


ALTER TABLE tbl_qna_reply
	ADD FOREIGN KEY (q_no)
	REFERENCES tbl_qna (q_no)
;


ALTER TABLE area
	ADD FOREIGN KEY (s_no)
	REFERENCES tbl_show (s_no)
;


ALTER TABLE tbl_show_actor
	ADD FOREIGN KEY (s_no)
	REFERENCES tbl_show (s_no)
;


ALTER TABLE tbl_show_attach
	ADD FOREIGN KEY (s_no)
	REFERENCES tbl_show (s_no)
;


ALTER TABLE tbl_show_reply
	ADD FOREIGN KEY (s_no)
	REFERENCES tbl_show (s_no)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_area_a_no BEFORE INSERT ON area
FOR EACH ROW
BEGIN
	SELECT SEQ_area_a_no.nextval
	INTO :new.a_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_concert_actor_a_no BEFORE INSERT ON tbl_concert_actor
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_concert_actor_a_no.nextval
	INTO :new.a_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_musical_actor_a_no BEFORE INSERT ON tbl_musical_actor
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_musical_actor_a_no.nextval
	INTO :new.a_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_musical_m_no BEFORE INSERT ON tbl_musical
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_musical_m_no.nextval
	INTO :new.m_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_musical_reply_r_no BEFORE INSERT ON tbl_musical_reply
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_musical_reply_r_no.nextval
	INTO :new.r_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_musical_reply_s_no BEFORE INSERT ON tbl_musical_reply
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_musical_reply_s_no.nextval
	INTO :new.s_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_notice_n_no BEFORE INSERT ON tbl_notice
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_notice_n_no.nextval
	INTO :new.n_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_show_actor_a_no BEFORE INSERT ON tbl_show_actor
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_show_actor_a_no.nextval
	INTO :new.a_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_show_reply_r_no BEFORE INSERT ON tbl_show_reply
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_show_reply_r_no.nextval
	INTO :new.r_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_tbl_show_reply_s_no BEFORE INSERT ON tbl_show_reply
FOR EACH ROW
BEGIN
	SELECT SEQ_tbl_show_reply_s_no.nextval
	INTO :new.s_no
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN area.a_sigungu IS '마커 좌표
';
COMMENT ON COLUMN tbl_show.s_s_date IS '
';



