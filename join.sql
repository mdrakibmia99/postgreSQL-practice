select p.title, u.userName from post p join users u on p.user_id = u.id;

select title,userName from post 
 join users on post.user_id = users.id;