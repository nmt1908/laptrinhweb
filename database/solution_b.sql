
2--Liệt kê số lượng các hóa đơn của khách hàng: mã user, tên user, số đơn hàng
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS so_don_hang
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.user_name;
Câu 3: SELECT orders.order_id, COUNT(order_details.order_detail_id) AS number_of_products
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY orders.order_id;
5--Liệt kê 7 người dùng có số lượng đơn hàng nhiều nhất, thông tin hiển thị gồm: mã
user, tên user, số lượng đơn hàng
SELECT users.id AS user_id, users.name AS user_name, COUNT(orders.id) AS order_count
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name
ORDER BY order_count DESC
LIMIT 7;
Câu 7: SELECT users.user_id, users.user_name, orders.order_id, SUM(products.product_price) AS total_price
FROM users
JOIN orders ON users.user_id = orders.user_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
GROUP BY users.user_id, orders.order_id;