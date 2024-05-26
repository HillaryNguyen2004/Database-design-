-- BTL SQL
--create database bookStore

-- when restock book
--update orders
--set stock = stock + 1
--where book_id = 22

-- when a client buy a book
--update orders
--set stock = stock - 1,
	--sales = sales + 1
--where order_date = '7/21/2023'

-- select the total sales of year 2022 and year 2023
--SELECT SUM(sales) AS total_sales_2022
--FROM orders
--WHERE YEAR(order_date) = 2022;

--SELECT SUM(sales) AS total_sales_2023
--FROM orders
--WHERE YEAR(order_date) = 2023;

-- select the year have the highest sum of sales 
--SELECT top 1 SUM(sales) AS top_sales,YEAR(order_date) as year
--FROM orders
--group by YEAR(order_date) 
--order by sum(sales) desc

-- retrieve all book that start with "O" and their corresponding author name 
--SELECT book.book_name, author.author_firstName, author.author_lastName
--FROM book 
--JOIN author ON book.author_id = author.author_id
--WHERE book.book_name LIKE 'O%'


-- retrieve all book that start with "O"
--SELECT book.book_name
--FROM book 
--WHERE book.book_name LIKE 'O%';

-- retrieve the top 5 products with the highest average sale amount decreasing order.
--SELECT top 5 AVG(sales) AS average_sales,book_id
--FROM orders
--group by book_id
--order by AVG(sales) desc

--retrieve all orders and their associated customers' names, sorted by customer name in ascending order.
--select sum(orders.sales), customer.customer_firstName, customer_lastName
--from orders
--join customer on orders.customer_id = customer.customer_id
--group by customer.customer_firstName, customer_lastName
--order by customer.customer_firstName, customer_lastName


--retrieve all customers who have not placed any orders.
--select customer.customer_firstName, customer_lastName,orders.sales
--from orders
--join customer on orders.customer_id = customer.customer_id
--where orders.sales = 0

--retrieve all books name and author name of books that publish the same day
--select book.book_name, author.author_firstName,author.author_lastName,book.publish_date
--from book
--join author on book.author_id = author.author_id
--join publisher on publisher.publish_date = book.publish_date
--where book.publish_date in (
	--select distinct publish_date
	--from publisher
	--group by publish_date
--)
--group by book.book_name, author.author_firstName,author.author_lastName,book.publish_date

-- sale 12/12
-- sale 50% on all book 
--ALTER TABLE book
--ADD price_on_sale INT;

--UPDATE book
--SET price_on_sale = 50 * price / 100;


--retrive all customer name, email
--select customer.customer_firstName, customer.customer_lastName,customer.email
--from customer
--join book on customer.customer_id = book.customer_id 
--group by customer_lastName,customer.customer_firstName,customer.email

-- retrive all customer name, email that order more than 10 books
--SELECT customer.customer_firstName,customer.customer_lastName,customer.email,SUM(orders.sales) as total_sales
--FROM customer
--JOIN book ON customer.customer_id = book.customer_id
--JOIN orders ON orders.customer_id = customer.customer_id
--GROUP BY customer.customer_firstName,customer.customer_lastName,customer.email
--HAVING SUM(orders.sales) >= 10

-- when a customer decided to cancel their membership
--delete from customer
--where customer.customer_firstName = 'Beau' and customer.customer_lastName = 'Artiss'






