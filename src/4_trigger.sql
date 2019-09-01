create table users(
  id   integer primary key,
  name text    unique not null,
  age  integer default 0 check(0<=age),
  cid  references classes(id)
);
create table classes(id integer primary key);

create trigger trg_0 delete on users begin delete from classes; end;
.headers on
.mode list
select * from sqlite_master where type = 'trigger';

