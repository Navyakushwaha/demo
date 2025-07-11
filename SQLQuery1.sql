create database MAYA;
use MAYA;

create table candidate
(
id bigint,
name varchar(20),
email varchar(30),
mobile bigint);

insert into candidate(id,name,email,mobile) values(1,'Navya','n@gmail.com',7505407811),(2,'Maya','n@gmail.com',7505407811),
(3,'Ashtha','n@gmail.com',7505407811),(4,'Sandhya','n@gmail.com',7505407811);

select*from candidate;


delete from candidate;

delete from candidate where id=2;
delete from candidate where id>=3;

use MAYA;
delete from candidate where id>=3;
delete from candidate where id<=2;

delete from candidate where id=2 and name='Maya';

delete from candidate where id=1 or name='Navya';

update candidate set name='Ashtha',email='n@gmail.com' where name='Sandhya';
update candidate set name='Sandhya'where id=2;
update candidate set name='Ashtha',email='n@gmail.com' where name='Ashtha';



use MAYA;

select* from candidate;
select name  from candidate;
select*from candidate where id=1;
select*from candidate where id=1 and name='maya';
select*from candidate where id=1 or name='maya';
select*from candidate where id between 1 and 3;
select*from candidate where id in( 1,2,3,4);

select count (id) from candidate where id in( 1,2,3,4);
select count(id) from candidate;

use MAYA;

alter table candidate add price bigint;

update candidate set 'price'=200 where id=3;
select min('price') from candidate;
select sum ('price') from candidate;
select avg('price') from candidate id in (1,2,3,4,5);

select*from candidate order by (price) ASC;

select*from candidate order by('price')desc;

select count (*)from candidate group by('name');
select email, count (*)from candidate group by('email');
select distinct('name'),email from candidate;
select*from candidate limit;
select*from candidate order by(id)DESC limit 2;


