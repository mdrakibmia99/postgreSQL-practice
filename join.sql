select p.title, u.userName from post p join users u on p.user_id = u.id;

select * from post 
 join users on post.user_id = users.id;

select * from post

--  left join 
select * from post 
 left join users on post.user_id = users.id;