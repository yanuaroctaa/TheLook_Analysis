SELECT 
	u.id, 
	u.age, 
	u.gender, 
	u.country, 
	u.traffic_source, 
	u.created_at,
	u.latitude,
	u.longitude,
	p.category,
	p.brand	
FROM
	users AS u
FULL OUTER JOIN 
	order_items AS o
ON 
	u.id = o.user_id
FULL OUTER JOIN
	product AS p
ON o.product_id = p.id
WHERE u.age BETWEEN 12 AND 60;
	
12	20 muda, 21 tahun sebagai dewasa

SELECT AGE FROM users
ORDER BY AGE DESC;
SELECT * FROM order_items
SELECT * FROM product