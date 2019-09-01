create table users(
  id   integer primary key,
  name text    unique not null,
  age  integer default 0 check(0<=age),
  cid  references classes(id)
);
create table classes(id integer primary key);
.headers on
.mode tabs
.output ./meta_users.tsv
pragma table_info(users);
.output stdout
.import ./meta_users.tsv meta_users
.headers off
select type from meta_users where name='age';

