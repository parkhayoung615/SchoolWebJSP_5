CREATE TABLE test(id varchar2(5), pwd varchar(5));

insert into test values('aa', '11');
insert into test values('bb', '22');
insert into test values('cc', '33');
insert into test values('dd', '44');

update test SET pwd = 999 WHERE id='dd';
update test set id='zz' WHERE pwd = 100;

SELECT * FROM test;