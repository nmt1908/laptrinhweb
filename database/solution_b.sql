1--Liệt kê các hóa đơn của khách hàng, thông tin hiển thị gồm: mã user, tên user, mã
hóa đơn
SELECT u.user_id, u.user_name, o.order_id
FROM users u
JOIN orders o ON u.user_id = o.user_id;

2--Liệt kê số lượng các hóa đơn của khách hàng: mã user, tên user, số đơn hàng
SELECT u.user_id, u.user_name, COUNT(o.order_id) AS so_don_hang
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.user_name;
Câu 3: SELECT orders.order_id, COUNT(order_details.order_detail_id) AS number_of_products
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY orders.order_id;
4--Liệt kê thông tin mua hàng của người dùng: mã user, tên user, mã đơn hàng, tên sản
phẩm. Lưu ý: gôm nhóm theo đơn hàng, tránh hiển thị xen kẻ các đơn hàng với nhau
SELECT u.user_id, u.user_name, o.order_id, p.product_name
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_id;

5--Liệt kê 7 người dùng có số lượng đơn hàng nhiều nhất, thông tin hiển thị gồm: mã
user, tên user, số lượng đơn hàng
SELECT users.id AS user_id, users.name AS user_name, COUNT(orders.id) AS order_count
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name
ORDER BY order_count DESC
LIMIT 7;
6. SELECT DISTINCT u.user_id, u.user_name, od.order_id, p.product_name
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE p.product_name LIKE '%Samsung%' OR p.product_name LIKE '%Apple%'
LIMIT 7;
Câu 7: SELECT users.user_id, users.user_name, orders.order_id, SUM(products.product_price) AS total_price
FROM users
JOIN orders ON users.user_id = orders.user_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
GROUP BY users.user_id, orders.order_id;
Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền, số sản phẩm. Mỗi user chỉ
chọn ra 1 đơn hàng có giá tiền nhỏ nhất.

8. SELECT 
    u.user_id,
    u.user_name,
    MAX(od.order_detail_id) AS order_detail_id,
    SUM(total_price_per_order) AS total_price
FROM
    users u
JOIN 
    orders o ON u.user_id = o.user_id
JOIN 
    order_details od ON o.order_id = od.order_id
JOIN 
    (
        SELECT 
            o2.order_id,
            SUM(p2.product_price) AS total_price_per_order
        FROM
            orders o2
        JOIN 
            order_details od2 ON o2.order_id = od2.order_id
        JOIN 
            products p2 ON od2.product_id = p2.product_id
        GROUP BY 
            o2.order_id
    ) AS order_total_price ON o.order_id = order_total_price.order_id
JOIN 
    products p ON od.product_id = p.product_id
WHERE
    (o.order_id, p.product_price) IN (
        SELECT 
            o2.order_id,
            MAX(p2.product_price)
        FROM
            orders o2
        JOIN 
            order_details od2 ON o2.order_id = od2.order_id
        JOIN 
            products p2 ON od2.product_id = p2.product_id
        GROUP BY 
            o2.order_id
    )
GROUP BY 
    u.user_id, u.user_name;
9--SELECT u.user_id, u.user_name, o.order_id, SUM(p.product_price) AS total_price, COUNT(od.order_detail_id) AS total_items
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE o.order_id IN (
    SELECT MIN(order_id)
    FROM orders
    GROUP BY user_id
)
GROUP BY u.user_id, u.user_name, o.order_id;
10--Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng, thông tin
hiển thị gồm: mã user, tên user, mã đơn hàng, tổng tiền, số sản phẩm. Mỗi user chỉ
chọn ra 1 đơn hàng có số sản phẩm là nhiều nhất.
SELECT 
    u.user_id,
    u.user_name,
    o.order_id,
    SUM(p.product_price) AS total_price,
    COUNT(od.order_detail_id) AS total_products
FROM
    users u
JOIN
    orders o ON u.user_id = o.user_id
JOIN
    order_details od ON o.order_id = od.order_id
JOIN
    products p ON od.product_id = p.product_id
GROUP BY
    u.user_id, o.order_id
HAVING
    total_products = (
        SELECT 
            COUNT(order_detail_id) 
        FROM 
            order_details 
        WHERE 
            order_id = o.order_id 
        ORDER BY 
            COUNT(order_detail_id) DESC 
        LIMIT 1
    );