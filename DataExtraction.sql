use sales;

select count(distinct market_code) from transactions ;

select SUM(sales_amount) as Total_USD from transactions where currency='USD';
select SUM(sales_amount) as Total_INR from transactions where currency='INR';
select SUM(sales_amount) as Total_INR from transactions where currency='INR\r';

select sum(sales_amount) as Total_amonut from transactions;

select date.year,sum(t.sales_amount) as Resign_wise_sale from transactions t
inner join markets m on m.markets_code=t.market_code inner join date on date.Date=t.order_date group by year;


select m.markets_name,sum(t.sales_amount) as Resign_wise_sale from transactions t
inner join markets m on m.markets_code=t.market_code inner join date on date.Date=t.order_date
group by m.markets_name order by Resign_wise_sale desc;


SELECT currency,SUM(sales_amount) as totalsale from transactions group by currency;

select top 1 * from date;
select top 1 * from markets;
select top 1 * from transactions;
select top 1 * from products;

select 
m.markets_name, t.*, p.product_type 
from transactions t 
inner join 
markets m on t.market_code=m.markets_code 
inner join
products p on t.product_code=p.product_code;
