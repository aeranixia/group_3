--상품 테이블
create table product(
    product_no number(8),                       -- 상품 번호
    category_code varchar2(200),                -- 카테고리 코드
    subcategory_code varchar2(200),             -- 서브카테고리 코드
    sub2category_code varchar2(200),            -- 서브2카테고리 코드
    sub3category_code varchar2(200),            -- 상세카테고리 코드
    product_code varchar2(200),                 -- 상품 코드
    product_name varchar2(200) not null,        -- 상품 이름
    product_m_img varchar2(2000) not null,      -- 상품 대표 사진
    product_p_img1 varchar2(2000),              -- 상품 상세 사진1
    product_p_img2 varchar2(2000),              -- 상품 상세 사진2
    product_p_img3 varchar2(2000),              -- 상품 상세 사진3
    product_p_img4 varchar2(2000),              -- 상품 상세 사진4
    product_company varchar2(200) not null,     -- 상품 제조사
    product_price number(10) not null,          -- 상품 가격
    product_mileage number(10) not null,        -- 상품 마일리지
    product_transport number(5) not null,       -- 상품 배송비
    product_build number(5) not null,           -- 상품 조립비
    product_sale number(3) default 0,           -- 상품 세일
    product_desc varchar2(2000) not null,       -- 상품 설명
    product_regdate date,                       -- 상품 등록일
    
    constraint product_pk primary key(product_code), --product_code 기본키 설정
    constraint product_fk_c foreign key(category_code) references category(category_code), -- category_code 외래키 설정
    constraint product_fk_s foreign key(subcategory_code) references subcategory(subcategory_code), --subcategory_code 외래키 설정
    constraint product_fk_s2 foreign key(sub2category_code) references sub2category(sub2category_code), --sub2category_code 외래키 설정
    constraint product_fk_s3 foreign key(sub3category_code) references sub3category(sub3category_code) --sub3category_code 외래키 설정

);

insert into product values(1, '100', '100_1', '100_1', '001', '100_001_M', '아쿠아텍스 리클라이너 흔들의자[민트그린]', '아쿠아텍스 리클라이너 흔들의자[민트그린]', '','','','','이안가구', 653700, 6000, 40000, 30000, 72, '리클라이너 1인 의자.', sysdate);