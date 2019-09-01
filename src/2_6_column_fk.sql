create table users(
  id   integer primary key,
  name text    unique not null,
  age  integer default 0 check(0<=age),
  cid  references classes(id)
);
create table classes(id integer primary key);

.mode list
.headers on
pragma foreign_key_list(users);

