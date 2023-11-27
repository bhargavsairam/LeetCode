# Write your MySQL query statement below

select results from 
(select u.name as results, count(distinct m.movie_id) as movie_count from users as u 
left join movieRating as m on u.user_id  = m.user_id 
group by u.user_id 
order by movie_count desc, results asc
limit 1) as user_ratings
UNION ALL
select results from
(select mv.title as results, avg(m.rating) as avg_rating from movies as mv 
left join movieRating as m on m.movie_id = mv.movie_id 
 where year(m.created_at) = 2020 and month(m.created_at) = 2 
group by mv.movie_id 
order by avg_rating desc, results asc
limit 1) as movie_ratings;
