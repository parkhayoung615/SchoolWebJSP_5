CREATE TABLE member(
	userid varchar2(20),
	userpwd varchar2(15)
);

alter table member default character set = utf8;

select * from member;
delete from member;