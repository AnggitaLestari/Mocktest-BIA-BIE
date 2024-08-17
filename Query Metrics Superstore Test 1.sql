
select * from categories
select * from customer
select * from orders

--	1. Jumlah seluruh produk yang terjual
SELECT SUM (quantity) AS total_products_sold
FROM orders

-- 2. Jumlah unique customer yang telah memesan produk
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM Orders

-- 3. Rata-rata profit dari seluruh order (dalam mata uang)
SELECT to_char(AVG(Profit), '$999,999.99') AS average_profit
FROM orders

-- 4. Berapa discount terkecil dari seluruh order
SELECT MIN(discount) AS Min_Discount
FROM orders
WHERE Discount > 0

-- 5. Jumlah seluruh produk dari kategori Furniture
SELECT SUM(o.quantity) AS Total_Furniture_Products
FROM orders o
JOIN categories c ON o."product_id" = c."product_id"
WHERE c.category = 'Furniture'

-- 6. Nama pelanggan yang membeli produk paling banyak (dalam quantity)
SELECT cu.customer_name, SUM(o.quantity) AS total_quantity
FROM orders o
JOIN customer cu ON o.customer_id = cu.customer_id
GROUP BY cu.customer_name
ORDER BY total_quantity DESC
LIMIT 1

-- 7. Nama pelanggan yang paling sering melakukan repeat order
SELECT c.customer_name, COUNT(DISTINCT o.order_id) AS order_count
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY order_count DESC
LIMIT 1

-- 8. Dari kota mana pelanggan yang paling sering melakukan repeat order
SELECT o.city, COUNT(DISTINCT o.order_id) AS order_count
FROM orders o
GROUP BY o.city
ORDER BY order_count DESC
LIMIT 1

-- 9. Order mana yang mendapatkan total discount paling kecil
SELECT order_id, SUM(discount) AS total_discount
FROM orders
WHERE Discount > 0
GROUP BY order_id
ORDER BY total_discount ASC
LIMIT 1

-- 10. Total profit yang datang dari produk dengan sub category Furnishings & Supplies
SELECT SUM(o.profit) AS total_profit
FROM orders o
JOIN categories c ON o.product_id = c.product_id
WHERE c.subcategory IN ('Furnishings', 'Supplies')

-- 11. Jumlah order yang berasal dari produk warna hitam (terdapat keterangan “black” di nama produknya)
SELECT COUNT(DISTINCT o.order_id) AS black_product_orders
FROM orders o
JOIN categories c ON o.product_id = c.product_id
WHERE LOWER(c.product_name) LIKE '%black%'

-- 12. Jumlah order yang memiliki waktu pengiriman masih di hari yang sama dengan waktu pemesanan
SELECT COUNT(*) AS same_day_shipments
FROM orders
WHERE order_date = ship_date

