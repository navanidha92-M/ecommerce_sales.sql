show databases ;
create database  ecommerce;
use ecommerce;
create table ecommerce(
order_id int,
order_date date,
customer_id int,
product_category varchar(50),
region varchar(20),
quantity int,
unit_price decimal(10,2),
discount decimal(5,2),
payment_method varchar(20),
delivery_days int,
customer_rating decimal(3,2),
revenue decimal(10,2),
month varchar(20),
year int,
sales decimal(10,2),
discount_amount decimal(10,2),
final_revenue decimal(10,2)
);
select * from ecommerce;
select count(*) as total_rows
from `ecommerce_sales.csv`;
select *
from `ecommerce_sales.csv`
limit 10;
use ecommerce;
show tables;
select count(*) as total_orders
from `ecommerce_sales.csv`;
select * from `ecommerce_sales.csv`;
select sum(revenue) as total_revenue
from`ecommerce_sales.csv`;
select sum(quantity) as total_quantity
from `ecommerce_sales.csv`;
select avg(revenue) as average_order_value
from `ecommerce_sales.csv`;
select count(distinct customer_id) as unique_customers
from `ecommerce_sales.csv`;
select product_category,count(*) as total_orders
from `ecommerce_sales.csv`
group by product_category;
select product_category,sum(revenue)as total_revenue
from`ecommerce_sales.csv`
group by product_category;
select region,sum(revenue)as total_revenue
from`ecommerce_sales.csv`
group by region;
select region, count(*) as total_orders
from`ecommerce_sales.csv`
group by region;
 select region,sum(revenue) as total_revenue
 from `ecommerce_sales.csv`
 group by region
 order by total_revenue desc;
 select product_category, avg(revenue) as average_revenu
from`ecommerce_sales.csv`
group by product_category; 
select product_category, 
avg(customer_rating) as average_customer_rating
from`ecommerce_sales.csv`
group by product_category; 
select region,avg(delivery_days) as average_days
from`ecommerce_sales.csv`
group by region;
select payment_method,sum(revenue)as total_revenue
from `ecommerce_sales.csv`
group by payment_method
order by total_revenue desc
select month,count(*) as total_month
from `ecommerce_sales.csv`
group by month
order by total_month desc;
select product_category,avg(discount) as total_discount
from `ecommerce_sales.csv`
group by product_category
order by total_discount desc;
select product_category,avg(customer_rating) as total_customer_rating
from `ecommerce_sales.csv`
group by product_category
order by total_customer_rating desc;
select count(*) as high_value_orders
from`ecommerce_sales.csv`
where revenue>2000;
select count(*) as high_value_orders
from`ecommerce_sales.csv`
where revenue>2000
group by product_category
order by high_value_orders desc;
select region,count(*) as high_values_orders 
from `ecommerce_sales.csv`
where revenue>2000
group by region
order by high_values_orders desc;
select product_category,sum(final_revenue) as total_final_revenue
from `ecommerce_sales.csv`
group by product_category
order by total_final_revenue desc;
select month,sum(revenue)as total_revenue
from `ecommerce_sales.csv`
group by month
order by total_revenue desc;
select product_category,sum(discount) as total_discount
from `ecommerce_sales.csv`
group by product_category
order by total_discount desc;
select * from `ecommerce_sales.csv`; 
select product_category,sum(revenue)as total_revenue
from `ecommerce_sales.csv`
group by product_category
having sum(revenue) >1000000
order by total_revenue desc;

select order_id, revenue,
case 
when revenue>=2000 then `high value`
when revenue>=1000 then `medium value`
else `low value`
end as order_category
from `ecommerce_sales.csv`;
















 
 








