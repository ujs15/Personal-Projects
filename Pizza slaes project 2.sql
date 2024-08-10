use demo_db;
select * from pizza_sales;

# KPI
select round(sum(total_price)) as Total_revenue from pizza_sales;
select sum(quantity) as total_pizza_sold from pizza_sales;
select round(sum(total_price) / count(distinct order_id))  as Average_order_value from pizza_sales;
select round( sum(quantity)/ count(distinct order_id) )as average_pizza_order from pizza_sales;
select count(distinct order_id) as Total_orders from pizza_sales;

select hour(order_time) order_hour , round(sum(quantity)) total_pizza_sold from pizza_sales 
group by hour(order_time) order by total_pizza_sold desc; # Hourly trend of pizza sales
select pizza_name, round(sum(total_price)) as total_pizza_Revenue from pizza_sales
 group by pizza_name order by total_pizza_revenue desc limit 5 ; # Top 5 performing pizza revenue wise
select pizza_name, round(sum(total_price)) as total_pizza_Revenue from pizza_sales 
group by pizza_name  order by total_pizza_revenue limit 5; # Bottom 5 performing pizza revenue wise
select pizza_name, round(sum(quantity)) as total_pizza_sold from pizza_sales 
group by pizza_name  order by total_pizza_sold limit 5; # Bottom 5 performing pizza quantity wise
select pizza_name, round(sum(quantity)) as total_pizza_sold from pizza_sales 
group by pizza_name  order by total_pizza_sold desc limit 5; # Bottom 5 performing pizza quantity wise



