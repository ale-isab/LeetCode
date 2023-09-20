SELECT 
b.product_id,
a.product_name
FROM 
Product a
join Sales b on a.product_id=b.product_id
group by
	b.product_id,a.product_name
having
	min(b.sale_date) >= '2019-01-01'
	AND
	max(b.sale_date) <= '2019-03-31'