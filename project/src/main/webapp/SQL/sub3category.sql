--상세카테고리 테이블
--상세카테고리 테이블
create table sub3category(
    sub3category_no number(8),                      -- 상세카테고리 번호
    sub2category_code varchar2(200),                -- 서브2카테고리 코드(외래키 설정)
    sub3category_code varchar2(200),                -- 상세카테고리 코드 (기본키 설정)
    sub3category_name varchar2(200) not null,       -- 상세카테고리 이름
    
    constraint sub3category_pk primary key(sub3category_code), -- sub3category_code 기본키 설정
    constraint sub3category_fk foreign key(sub2category_code) references sub2category(sub2category_code) -- sub2category_code 외래키 설정
);

insert into sub3category values(1, '100_1', '001', '민트그린');