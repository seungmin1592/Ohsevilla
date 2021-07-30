insert into member(id,pw,name,email,phone,address,agreement) values ('test','123','TEST','test@test.com','010-0000-0000','안산',1);

select * from member;

create table member(
    id varchar2(20) primary key,
    pw varchar2(20) not null,
    name varchar2(20) not null,
    email varchar2(30) not null,
    phone varchar2(20) not null,
    address varchar2(50) not null
    );
    
    select * from member;
    
    
    SELECT * FROM NLS_DATABASE_PARAMETERS

WHERE PARAMETER

LIKE '%CHARACTERSET%';

commit;

insert into member values ('zzz','111','asd','asd@asd','000-0000-0000','경기도 안산시');