--서브카테고리 테이블
create table subcategory(
    subcategory_no number(8),                       -- 서브카테고리 번호
    category_code varchar2(200) not null,           -- 카테고리 코드(외래키 설정)
    subcategory_code varchar2(200),                 -- 서브카테고리 코드 (기본키 설정)
    subcategory_name varchar2(200) not null,        -- 서브카테고리 이름
    
    constraint subcategory_pk primary key(subcategory_code), -- subcategory_code 기본키 설정
    constraint subcategory_fk foreign key(category_code) references category(category_code) -- category_code 외래키 설정
);

--등록 예시
insert into subcategory values(1, '100', '100_1', '리클라이너');