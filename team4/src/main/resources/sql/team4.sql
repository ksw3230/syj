/* Drop Tables */

DROP TABLE basket CASCADE CONSTRAINTS;
DROP TABLE diction CASCADE CONSTRAINTS;
DROP TABLE est_class CASCADE CONSTRAINTS;
DROP TABLE wrong_answer CASCADE CONSTRAINTS;
DROP TABLE homework_m CASCADE CONSTRAINTS;
DROP TABLE homework_w CASCADE CONSTRAINTS;
DROP TABLE word_card CASCADE CONSTRAINTS;
DROP TABLE Indexcard CASCADE CONSTRAINTS;
DROP TABLE ins_class_vid CASCADE CONSTRAINTS;
DROP TABLE qna_a CASCADE CONSTRAINTS;
DROP TABLE qna_q CASCADE CONSTRAINTS;
DROP TABLE stamp CASCADE CONSTRAINTS;
DROP TABLE reg_class CASCADE CONSTRAINTS;
DROP TABLE ins_class CASCADE CONSTRAINTS;
DROP TABLE note_st CASCADE CONSTRAINTS;
DROP TABLE note_tc CASCADE CONSTRAINTS;
DROP TABLE sch_st_contents CASCADE CONSTRAINTS;
DROP TABLE scheduler_st CASCADE CONSTRAINTS;
DROP TABLE sch_tc_contents CASCADE CONSTRAINTS;
DROP TABLE scheduler_tc CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;
DROP TABLE teacher CASCADE CONSTRAINTS;




/* Create Tables */

create table coupon( 
    -- 쿠폰 번호
    c_num number PRIMARY KEY,
    -- 쿠폰 할인 가격
    c_discount number,
    -- 학생 아이디
    st_id varchar(20) not null,
    constraint coupon_fk foreign key(st_id) references student(st_id) on delete cascade
);
create sequence coupon_seq;

CREATE TABLE basket
(
	-- 장바구니 번호
	bas_num number PRIMARY KEY,
	-- 강의등록 번호
	ins_num  number NOT NULL,
<<<<<<< HEAD
	constraint basket_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade
=======
    constraint basket_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
);

create sequence basket_seq;

CREATE TABLE diction
(
	diction_num number NOT NULL,
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	-- 수강신청 번호
	reg_class number NOT NULL,
	PRIMARY KEY (diction_num)
);


CREATE TABLE est_class
(
	-- 평가번호
	est_num number NOT NULL,
	-- 수강신청 번호
	reg_class number NOT NULL,
	PRIMARY KEY (est_num)
);

create table homework_m( -- 객관식 문제
--문create sequence basket_seq;
제번호 pk
m_num number primary key,
--객관식문제
m_question varchar(500) not null,
--객관식찐답
m_answer number(10) not null,
--문제 해설
m_exp varchar(2000),
--동영상번호 fk(ins_class_vid)
vid_num number,
CONSTRAINT homework_m_fk foreign key(vid_num) references ins_class_vid(vid_num) on delete cascade
);

create sequence homework_m_seq;

create table homework_w(-- 작문 문제
--문제번호 pk
w_num number primary key,
--문제
w_question varchar(1000) not null,
--핵심표현
w_pointexp varchar(1000) not null,
--답
w_answer varchar(1000),
--동영상번호 fk(ins_class_vid)
vid_num number,
CONSTRAINT homework_w_fk foreign key(vid_num) references ins_class_vid(vid_num) on delete cascade
);

create sequence homework_w_seq;

CREATE TABLE ins_class --강의 등록 테이블
(
<<<<<<< HEAD
   -- 강의등록 번호
   ins_num  number PRIMARY KEY,
   -- 강의 제목
   ins_title varchar2(30) not null,
   -- 강의 설명
   ins_des varchar2(500) not null,
   -- 강의등록일
   ins_date date default sysdate,
   -- 카테고리
   ins_cate varchar2(20) not null,
   -- 동영상 목록
   ins_vidlist varchar2(3000),
   -- 가격
   ins_price number,
   -- 대표썸네일
   ins_thumbnail varchar2(50),
   -- 대표썸네일실제저장이름
   ins_thumbnailsave varchar2(50),
   -- 선생님 아이디
   tc_id varchar2(20) NOT NULL,
=======
	-- 강의등록 번호
	ins_num  number PRIMARY KEY,
	-- 강의 제목
	ins_title varchar2(30) not null,
	-- 강의 설명
	ins_des varchar2(500) not null,
	-- 강의등록일
	ins_date date default sysdate,
	-- 카테고리
	ins_cate varchar2(20) not null,
	-- 동영상 목록
	ins_vidlist varchar2(3000),
	-- 가격
	ins_price number,
	-- 대표썸네일
	ins_thumbnail varchar2(50),
	-- 대표썸네일실제저장이름
	ins_thumbnailsave varchar2(50),
	-- 선생님 아이디
	tc_id varchar2(20) NOT NULL,
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
    constraint ins_fk foreign key(tc_id) references teacher(tc_id) on delete cascade
);
<<<<<<< HEAD

create sequence ins_class_seq;
;
=======
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
create sequence ins_class_seq;
-- 강의동영상
CREATE TABLE ins_class_vid
(
<<<<<<< HEAD
   -- 강의 비디오 번호
   vid_num number PRIMARY KEY,
   --동영상 제목
   vid_title varchar2(200) not null,
   --동영상 강의 설명
   vid_desc varchar2(500) not null,
   -- 동영상 저장이름
   vid_vidname varchar2(200),
   -- 동영상 실제 저장 이름
   vid_vidsavename varchar2(50),
   -- 썸네일이름
   vid_thumbnail varchar2(50),
   -- 썸네create sequence ins_class_seq;
제저장이름
   vid_thumbsavename varchar2(50),
   -- 강의등록 번호
   ins_num  number NOT NULL,
=======
	-- 강의 비디오 번호
	vid_num number PRIMARY KEY,
	--동영상 제목
	vid_title varchar2(30) not null,
	--동영상 강의 설명
	vid_desc varchar2(500) not null,
	-- 동영상 저장이름
	vid_vidname varchar2(200),
	-- 동영상 실제 저장 이름
	vid_vidsavename varchar2(50),
	-- 썸네일이름
	vid_thumbnail varchar2(50),
	-- 썸네일실제저장이름
	vid_thumbsavename varchar2(50),
	-- 강의등록 번호
	ins_num  number NOT NULL,
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
    constraint vd_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade
);
<<<<<<< HEAD

create sequence ins_class_vid_seq;

=======
create sequence ins_class_vid_seq;
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
-- 학생 노트
CREATE TABLE note_st
(
	-- 학생노트 번호
	note_st_num number NOT NULL,
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	PRIMARY KEY (note_st_num)
);


-- 선생님 노트
CREATE TABLE note_tc
(
	-- 선생님 노트 번호
	note_tc_num number NOT NULL,
	-- 선생님 아이디
	-- 
	tc_id varchar2(20) NOT NULL,
	PRIMARY KEY (note_tc_num)
);


-- 질의응답 대답
CREATE TABLE qna_a
(
	-- 답변 번호
	qna_a number NOT NULL,
	-- 질문 번호
	q_num number NOT NULL,
	-- 선생님 아이디
	-- 
	tc_id varchar2(20) NOT NULL,
	PRIMARY KEY (qna_a)
);


-- 질의응답 질문
CREATE TABLE qna_q
(
	-- 질문 번호
	q_num number NOT NULL,
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	-- 수강신청 번호
	reg_class number NOT NULL,
	PRIMARY KEY (q_num)
);


-- 강의신청 테이블
CREATE TABLE suc_class
(
	-- 수강신청 번호
	suc_num number PRIMARY KEY,
    -- 수강구매일
    suc_buydate date default sysdate,
    -- 진도율
    progress number default 0,
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	-- 강의등록 번호
	ins_num  number not null,
    constraint sucid_fk foreign key(st_id) references student(st_id) on delete cascade,
    constraint sucnum_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade	
);
create sequence suc_class_seq;
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git

CREATE TABLE scheduler_st
(
	-- 학생 스케줄러 번호
	-- 
	sch_st_num number NOT NULL,
	-- 학생아이디
	st_id varc	ins_num  number not null,
    constraint sucid_fk foreign key(st_id) references student(st_id) on delete cascade,
    constraint sucnum_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade	

);


CREATE TABLE scheduler_tc
(
	-- 선생님 스케줄 번호
	sch_tc_num number NOT NULL,
	-CREATE TABLE suc_class varchar2(20) NOT	suc_num number PRIMARY KEY,
    -- 수강구매일
create sequence suc_class_seq;
    suc_buydate date default sysdate,
    -- 진도율
    progress number default 0,
num)
);


CREATE TABLE sch_st_contents
(
	-- 스케줄러 내용 번호
	sch_st_contents_num  NOT NULL,
	-- 학생 스케줄러 번호
	-- 
	sch_st_num number NOT NULL,
	PRIM	ins_num  number not null,
    constraint sucid_fk foreign key(st_id) references student(st_id) on delete cascade,
    constraint sucnum_fk foreign key(ins_num) references ins_class(ins_num) on delete cascade	
 TABLE sch_tc_contents
(
	-- 선생님 스케줄 번호
	sch_tc_num number NOT NULL,
	-- 학생스케줄 컨텐츠 번호
	sch_tc_contents_num number NOT NULL,
	PRIMARY KEY (sch_tc_contents_num)
);

create sequence suc_class_seq;

CREATE TABLE stamp
(
	-- 스탬프 번호
	stamp_num number NOT NULL,
	-- 수강신청 번호
	reg_class number NOT NULL,
	PRIMARY KEY (stamp_num)
);


-- 학생테이블
CREATE TABLE student
(
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	-- 비밀번호
	st_pw varchar2(20) NOT NULL,
	-- 이름
	st_name varchar2(20) NOT NULL,
	-- 생년월일
	st_dob varchar2(20) NOT NULL,
	-- 전화번호
	st_phone varchar2(20) NOT NULL,
	-- 이메일
	st_email varchar2(30) NOT NULL,
	-- 레벨
	st_level varchar2(5) NOT NULL,
	-- 사진이름
	st_picname varchar2(30),
	-- 저장되는 사진의 이름
	st_savedpicname varchar2(30),
	PRIMARY KEY (st_id)
);


CREATE TABLE teacher
(
	-- 선생님 아이디
	tc_id varchar2(20) NOT NULL,
	-- 비밀번호
	tc_pw varchar2(20) NOT NULL,
	-- 선생님 이름
	tc_name varchar2(30) NOT NULL,
	-- 생년월일
	tc_dob varchar2(20) NOT NULL,
	-- 전화번호
	tc_phone varchar2(20) NOT NULL,
	-- 이메일
	tc_email varchar2(30) NOT NULL,
	-- 사진이름
	tc_picname varchar2(30),
	-- 저장된 사진 이름
	tc_savedpicid varchar2(30),
	-- 권한 승인 여부
	tc_check varchar2(1) default 'n',
	PRIMARY KEY (tc_id)
);

CREATE TABLE wrong_answer
(
	-- 오답번호
	wrong_ans_num number NOT NULL,
	-- 객관식 숙제 등록
	hwm_num  NOT NULL,
	PRIMARY KEY (wrong_ans_num)
);

CREATE TABLE Indexcard(
	-- 단어세트 번호
	card_set_num number PRIMARY KEY,
	-- 학생아이디
	st_id varchar2(20) NOT NULL,
	--외래키
	CONSTRAINT id_fk foreign key(st_id) references student(st_id) on delete cascade
);

-- 단어세트번호부여
create sequence indexcard_seq;

CREATE TABLE word_card(
	word_num number PRIMARY KEY,
	-- 단어세트 번호
	card_set_num number NOT NULL,
	-- 영어
	english varchar2(30) not null,
	-- 한글
	korean varchar2(30) not null, 
	-- 진도율
	percent number default 0,
    -- 외래키
    CONSTRAINT num_fk foreign key(card_set_num) references Indexcard(card_set_num) on delete cascade
);

-- 단어번호부여
create sequence wordcard_seq;

<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/ksw3230/syj.git
/* Create Foreign Keys */

LTER TABLE wrong_answer
	ADD FOREIGN KEY (hwm_num)
	REFERENCES homework_m (hwm_num)
;


ALTER TABLE word_card
	ADD FOREIGN KEY (card_set_num)
	REFERENCES Indexcard (card_set_num)
;


ALTER TABLE basket
	ADD FOREIGN KEY (ins_num )
	REFERENCES ins_class (ins_num )
;


ALTER TABLE ins_class_vid
	ADD FOREIGN KEY (ins_num )
	REFERENCES ins_class (ins_num )
;



ALTER TABLE reg_class
	ADD FOREIGN KEY (ins_num )
	REFERENCES ins_class (ins_num )
;


ALTER TABLE homework_m
	ADD FOREIGN KEY (vid_num)
	REFERENCES ins_class_vid (vid_num)
;


ALTER TABLE homework_w
	ADD FOREIGN KEY (vid_num)
	REFERENCES ins_class_vid (vid_num)
;


ALTER TABLE qna_a
	ADD FOREIGN KEY (q_num)
	REFERENCES qna_q(q_num)
;


ALTER TABLE diction
	ADD FOREIGN KEY (reg_class)
	REFERENCES reg_class (reg_class)
;


ALTER TABLE est_class
	ADD FOREIGN KEY (reg_class)
	REFERENCES reg_class (reg_class)
;


ALTER TABLE homework_m
	ADD FOREIGN KEY (reg_class)
	REFERENCES reg_class (reg_class)
;


ALTER TABLE qna_q
	ADD FOREIGN KEY (reg_class)
	REFERENCES reg_class (reg_class)
;


ALTER TABLE stamp
	ADD FOREIGN KEY (reg_class)
	REFERENCES reg_class (reg_class)
;


ALTER TABLE sch_st_contents
	ADD FOREIGN KEY (sch_st_num)
	REFERENCES scheduler_st (sch_st_num)
;


ALTER TABLE sch_tc_contents
	ADD FOREIGN KEY (sch_tc_num)
	REFERENCES scheduler_tc (sch_tc_num)
;


ALTER TABLE diction
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE Indexcard
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE note_st
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE qna_q
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE reg_class
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE scheduler_st
	ADD FOREIGN KEY (st_id)
	REFERENCES student (st_id)
;


ALTER TABLE ins_class
	ADD FOREIGN KEY (tc_id)
	REFERENCES teacher (tc_id)
;


ALTER TABLE note_tc
	ADD FOREIGN KEY (tc_id)
	REFERENCES teacher (tc_id)
;


ALTER TABLE qna_a
	ADD FOREIGN KEY (tc_id)
	REFERENCES teacher (tc_id)
;


ALTER TABLE scheduler_tc
	ADD FOREIGN KEY (tc_id)
	REFERENCES teacher (tc_id)
;



/* Comments */

COMMENT ON COLUMN basket.bas_num IS '장바구니 번호';
COMMENT ON COLUMN basket.ins_num  IS '강의등록 번호';
COMMENT ON COLUMN diction.st_id IS '학생아이디';
COMMENT ON COLUMN diction.reg_class IS '수강신청 번호';
COMMENT ON COLUMN est_class.est_num IS '평가번호';
COMMENT ON COLUMN est_class.reg_class IS '수강신청 번호';
COMMENT ON TABLE homework_m IS '객관식 숙제';
COMMENT ON COLUMN homework_m.hwm_num IS '객관식 숙제 등록';
COMMENT ON COLUMN homework_m.vid_num IS '강의 비디오 번호';
COMMENT ON COLUMN homework_m.reg_class IS '수강신청 번호';
COMMENT ON TABLE homework_w IS '주관식 문제';
COMMENT ON COLUMN homework_w.hww_num IS '주관식 숙제 번호';
COMMENT ON COLUMN homework_w.vid_num IS '강의 비디오 번호';
COMMENT ON COLUMN Indexcard.card_set_num IS '단어세트 번호';
COMMENT ON COLUMN Indexcard.st_id IS '학생아이디';
COMMENT ON COLUMN ins_class.ins_num  IS '강의등록 번호';
COMMENT ON COLUMN ins_class.tc_id IS '선생님 아이디
';
COMMENT ON COLUMN ins_class_vid.vid_num IS '강의 비디오 번호';
COMMENT ON COLUMN ins_class_vid.ins_num  IS '강의등록 번호';
COMMENT ON TABLE note_st IS '선생님 놑트';
COMMENT ON COLUMN note_st.note_st_num IS '학생노트 번호';
COMMENT ON COLUMN note_st.st_id IS '학생아이디';
COMMENT ON TABLE note_tc IS '선생님 노트';
COMMENT ON COLUMN note_tc.note_tc_num IS '선생님 노트 번호';
COMMENT ON COLUMN note_tc.tc_id IS '선생님 아이디
';
COMMENT ON TABLE qna_a IS '질의응답 대답';
COMMENT ON COLUMN qna_a.qna_a IS '답변 번호';
COMMENT ON COLUMN qna_a.q_num IS '질문 번호';
COMMENT ON COLUMN qna_a.tc_id IS '선생님 아이디
';
COMMENT ON TABLE qna_q IS '질의응답 질문';
COMMENT ON COLUMN qna_q.q_num IS '질문 번호';
COMMENT ON COLUMN qna_q.st_id IS '학생아이디';
COMMENT ON COLUMN qna_q.reg_class IS '수강신청 번호';
COMMENT ON TABLE reg_class IS '강의신청 테이블';
COMMENT ON COLUMN reg_class.reg_class IS '수강신청 번호';
COMMENT ON COLUMN reg_class.st_id IS '학생아이디';
COMMENT ON COLUMN reg_class.ins_num  IS '강의등록 번호';
COMMENT ON COLUMN scheduler_st.sch_st_num IS '학생 스케줄러 번호
';
COMMENT ON COLUMN scheduler_st.st_id IS '학생아이디';
COMMENT ON COLUMN scheduler_tc.sch_tc_num IS '선생님 스케줄 번호';
COMMENT ON COLUMN scheduler_tc.tc_id IS '선생님 아이디
';
COMMENT ON COLUMN sch_st_contents.sch_st_contents_num IS '스케줄러 내용 번호';
COMMENT ON COLUMN sch_st_contents.sch_st_num IS '학생 스케줄러 번호
';
COMMENT ON COLUMN sch_tc_contents.sch_tc_num IS '선생님 스케줄 번호';
COMMENT ON COLUMN sch_tc_contents.sch_tc_contents_num IS '학생스케줄 컨텐츠 번호';
COMMENT ON COLUMN stamp.stamp_num IS '스탬프 번호';
COMMENT ON COLUMN stamp.reg_class IS '수강신청 번호';
COMMENT ON TABLE student IS '학생테이블';
COMMENT ON COLUMN student.st_id IS '학생아이디';
COMMENT ON COLUMN student.st_pw IS '비밀번호
';
COMMENT ON COLUMN student.st_name IS '이름';
COMMENT ON COLUMN student.st_dob IS '생년월일
';
COMMENT ON COLUMN student.st_email IS '이메일';
COMMENT ON COLUMN student.st_level IS '레벨';
COMMENT ON COLUMN student.st_picname IS '사진이름';
COMMENT ON COLUMN student.st_savedpicname IS '저장되는 사진의 이름';
COMMENT ON COLUMN teacher.tc_id IS '선생님 아이디
';
COMMENT ON COLUMN teacher.tc_pw IS '비밀번호';
COMMENT ON COLUMN teacher.tc_name IS '선생님 이름';
COMMENT ON COLUMN teacher.tc_dob IS '생년월일';
COMMENT ON COLUMN teacher.tc_phone IS '전화번호
';
COMMENT ON COLUMN teacher.tc_email IS '이메일';
COMMENT ON COLUMN teacher.tc_picname IS '사진이름';
COMMENT ON COLUMN teacher.tc_savedpicid IS '저장된 사진 이름';
COMMENT ON COLUMN word_card.word_num IS '단어 번호';
COMMENT ON COLUMN word_card.card_set_num IS '단어세트 번호';
COMMENT ON COLUMN wrong_answer.wrong_ans_num IS '오답번호';
COMMENT ON COLUMN wrong_answer.hwm_num IS '객관식 숙제 등록';





