SELECT content from board_cafe;

-- 게시글을 저장할 테이블
CREATE TABLE board_cafe(
	NUM NUMBER primary key, -- 글번호
	WRITER VARCHAR2(100) NOT NULL, -- 작성자 (로그인된 아이디)
	TITLE VARCHAR2(100) NOT NULL, -- 제목
	CONTENT CLOB, -- 글 내용
	VIEWCOUNT NUMBER, -- 조회수
	REGDATE DATE -- 글 작성일
);

-- 게시글의 번호를 얻어낼 시퀀스
CREATE SEQUENCE board_cafe_seq;

-- 어떤 세션에서 몇번글을 읽었는지 정보를 저장할 테이블
CREATE TABLE READED_DATA(
	NUM NUMBER REFERENCES BOARD_CAFE(NUM),
	SESSION_ID VARCHAR2(50)
);