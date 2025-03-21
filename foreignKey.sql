create table "users" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(50) NOT NULL

);
-- create table post (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "users"(id) on delete cascade
-- );
-- create table post (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "users"(id) on delete  set null
-- );
create table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "users"(id) on delete  set DEFAULT DEFAULT 1
);
 DROP TABLE post;
 DROP TABLE "users";
insert into "users" (userName) values ('akash'),('batas'),('sagor')

select * from users

insert into post (title, user_id) values ('First Post', 1), ('Second Post', 2), ('Third Post', 3)

select * from post

select p.title, u.userName from post p join users u on p.user_id = u.id;

select title,userName from post 
 join users on post.user_id = users.id;

-- deletion constraint on delete user
-- restrict deletion => on delete restrict / on delete no action (default)
-- cascade deletion => on delete cascade ( users table theke jodi kono data delete kora hoy sei id jodi onno table a thake tahole sei table ar row o delete hoye jabe)
--  seting null => on delete set null (users table theke jodi kono data delete kora hoy sei id jodi onno table a thake tahole sei table ar row ar user_id null hoye jabe)
--  seting default => on delete set default (users table theke jodi kono data delete kora hoy sei id jodi onno table a thake tahole sei table ar row ar user_id default value set hoye jabe)
--  set default => on delete set default
 
 DELETE FROM "users" WHERE id = 3;