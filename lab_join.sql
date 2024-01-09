select c.name, count(f.film_id)
from film f
join film_category fc
on f.film_id=fc.film_id
join category c 
on fc.category_id=c.category_id
group by name;
select first_name, last_name, address
from staff s 
join address a
on s.address_id=a.address_id;
select s.staff_id, sum(amount)
from staff s
join payment p
on s.staff_id=p.staff_id
where payment_date between '2005-08-01' and '2005-08-31'
group by s.staff_id;
select title, count(actor_id)
from film f
join film_actor fa
using(film_id)
group by title;
select customer_id, last_name, sum(amount)
from customer c
join payment p
using(customer_id)
group by customer_id, last_name
order by last_name;
