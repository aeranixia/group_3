--카테고리 테이블
create table category(
    category_no number(8),                          -- 카테고리 번호
    category_code varchar2(200),                    -- 카테고리 코드 (기본키 설정)
    category_name varchar2(200) not null,           -- 카테고리 이름
    
    constraint category_pk primary key(category_code) -- category_code 기본키 설정
);

--등록 예시
insert into category values(1, '100', '소파');