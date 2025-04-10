select *
from users
order by created_at desc
limit 5;

select DAYNAME(created_at) as day,
count(*) as registered_count
from users
group by day
order by registered_count desc;

select username
from users u left join photos p on u.id = p.user_id
where p.user_id is NULL;

select u.username, p.id, p.image_url, count(*) as total
from photos p
join likes l on l.photo_id = p.id
join users u on u.id = p.user_id
group by p.id
order by total desc
limit 1;

-- This query only find the avg of users who have posted, users who are invalid and have null posts are not included
select avg(total_count) as avg_count from
(select user_id, count(*) as total_count
from photos
group by user_id) as user_count;

-- This query find the avg of all including users who are invalid and have null posts are taken
SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 


select t.tag_name, p.tag_id, count(*) as count_of_use
from photo_tags p
join tags t on p.tag_id = t.id
group by p.tag_id
order by count_of_use desc
limit 5;


select * from likes;
select * from  users;

select u.username, count(*) as num_likes
from users u
join likes l on l.user_id = u.id
group by l.user_id
having num_likes = (select count(*) from photos);

select username
from users u left join comments c on u.id = c.user_id
where c.user_id is NULL;

SELECT 
    (COUNT(*)/(SELECT COUNT(*) FROM users)*100) as percent 
FROM(
SELECT 
        users.id, 
        COUNT(DISTINCT photo_id) as comms 
    FROM comments 
        RIGHT JOIN users 
            ON comments.user_id = users.id 
    GROUP BY users.id 
    HAVING comms = (SELECT COUNT(*) FROM photos) OR comms = 0
) as total ;


select id, username, created_at,
rank () over (order by created_at) as 'rank' from users;


select * from tags;
select * from photo_tags;

select tag_name, num_of_photos, rank() over (order by num_of_photos desc) as 'Rank'
from 
( select t.tag_name, count(pt.photo_id) as num_of_photos
from photo_tags pt
join tags t on pt.tag_id = t.id
group by t.tag_name
order by num_of_photos desc
) as t;

select * from photos;
select * from users;

select username, photo_posted, rank() over (order by photo_posted desc) as 'Rank'
from
( select u.username, count(p.id) as photo_posted
from photos p
join users u on u.id = p.user_id
group by username
order by photo_posted desc)
as temp;

