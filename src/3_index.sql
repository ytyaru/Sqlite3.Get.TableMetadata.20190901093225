create table users(
  id   integer primary key,
  name text    unique not null,
  age  integer default 0 check(0<=age),
  cid  references classes(id)
);
create table classes(id integer primary key);
.indexes

.headers on
pragma index_list(users);
pragma index_info(sqlite_autoindex_users_1);
pragma index_xinfo(sqlite_autoindex_users_1);

