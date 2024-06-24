-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE USER_INFO(
	ID VARCHAR2(100) CONSTRAINT USER_INFO_ID_PK PRIMARY KEY,
	PWD VARCHAR2(100) CONSTRAINT USER_INFO_PWD_NN NOT NULL,
	EMAIL VARCHAR2(100),
	PROFILE VARCHAR2(100), --프로필 이미지 경로를 저장할 칼럼
	REDGATE DATE -- 가입일
);