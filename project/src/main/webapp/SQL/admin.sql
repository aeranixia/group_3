--관리자 테이블
create table admin(
    admin_no number(8),         -- 관리자 번호
    admin_id varchar2(200),     -- 관리자 아이디
    admin_pwd varchar2(200),    -- 관리자 비밀번호
    admin_name varchar2(200),   -- 관리자 이름
    admin_email varchar2(200),  -- 관리자 이메일
    admin_date date,            -- 관리자 등록일
    
    constraint admin_pk primary key(admin_no), --admin_no 기본키 설정
    constraint admin_id_unique unique(admin_id)
);

--등록 예시
insert into admin values (1, 'admin', 'admin','관리자1', '', sysdate);