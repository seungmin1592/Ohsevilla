
-- member table
create table member(
    id varchar2(20) primary key,
    pw varchar2(20) not null,
    name varchar2(20) not null,
    email varchar2(30) not null,
    phone varchar2(20) not null,
    address varchar2(50) not null
);

insert into member(id,pw,name,email,phone,address,agreement) values ('test','123','TEST','test@test.com','010-0000-0000','안산',1);

select * from member;


-- bbs table
create table bbs(
    idx int primary  key,
    title varchar2(50) not null,
    bbsContent varchar2(4000) not null,
    userName varchar2(20) not null,
    bbsDate Date not null
);

create sequence idx; 
 
-- 제약조건 추가
 
alter table bbs
add foreign key(userName)
REFERENCES member(name);


