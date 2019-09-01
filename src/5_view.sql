create table users(
  id   integer primary key,
  name text    unique not null,
  age  integer default 0 check(0<=age),
  cid  references classes(id)
);
create table classes(id integer primary key);

create view view_all_users as select * from users;
.headers on
.mode list
select * from sqlite_master where type = 'view';

