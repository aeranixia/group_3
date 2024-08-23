--서브2카테고리 테이블
create table sub2category(
    sub2category_no number(8),                      -- 서브2카테고리 번호
    category_code varchar2(200),                    -- 카테고리 코드(외래키 설정)
    sub2category_code varchar2(200),                -- 서브2카테고리 코드 (기본키 설정)
    sub2category_name varchar2(200) not null,       -- 서브2카테고리 이름
    
    constraint sub2category_pk primary key(sub2category_code), -- sub2category_code 기본키 설정
    constraint sub2category_fk foreign key(category_code) references category(category_code) -- category_code 외래키 설정
);

insert into sub2category values(1, '100', '100_1', '색상');