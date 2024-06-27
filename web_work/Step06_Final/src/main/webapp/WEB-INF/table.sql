-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE USER_INFO(
	ID VARCHAR2(100) CONSTRAINT USER_INFO_ID_PK PRIMARY KEY,
	PWD VARCHAR2(100) CONSTRAINT USER_INFO_PWD_NN NOT NULL,
	EMAIL VARCHAR2(100),
	PROFILE VARCHAR2(100), --프로필 이미지 경로를 저장할 칼럼
	REGDATE DATE -- 가입일
);

-- 업로드된 파일의 정보를 저장할 테이블
CREATE TABLE board_file(
	NUM NUMBER PRIMARY KEY,
	WRITER VARCHAR2(100) NOT NULL,
	TITLE VARCHAR2(100) NOT NULL,
	ORGFILENAME VARCHAR2(100) NOT NULL, -- 원본 파일명
	SAVEFILENAME VARCHAR2(100) NOT NULL, -- 서버에 실제로 저장된 파일명
	FILESIZE NUMBER NOT NULL, --파일의 크기
	REGDATE DATE
);

CREATE SEQUENCE board_file_seq;

-- 게시글을 저장할 테이블
CREATE TABLE board_cafe(
	NUM NUMBER PRIMARY KEY, -- 글번호
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