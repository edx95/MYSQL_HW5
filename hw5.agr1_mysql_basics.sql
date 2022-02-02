-- ���� ��������, ������� 5
-- (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������.
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- ������������ ������ � �������, �������� � ������ IN.

use MYSHOP;
show TABLES;
select * from catalogs;

drop table catalogs;
create table catalogs (
-- id INT NULL,
id SERIAL PRIMARY KEY,
value INT DEFAULT null)
;

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');

SELECT
  *
FROM
  catalogs
WHERE
  id IN (5, 1, 2)
ORDER BY
  FIELD(id, 5, 1, 2);


 -- INSERT INTO catalogs VALUES (NULL, '����������');
INSERT INTO products
(name, description, price, catalog_id)
VALUES
('Intel Core i3-8100', '��������� Intel.', 7890.00, LAST_INSERT_ID()),
('Intel Core i5-7400', '��������� Intel.', 12700.00, LAST_INSERT_ID()),
('AMD FX-8320E', '��������� AMD.', 4780.00, LAST_INSERT_ID()),
('AMD FX-8320', '��������� AMD.', 7120.00, LAST_INSERT_ID());
INSERT INTO catalogs VALUES (NULL, '����������� �����');
INSERT INTO products
(name, description, price, catalog_id)
VALUES
('ASUS ROG MAXIMUS X HERO', 'Z370, Socket 1151-V2, DDR4, ATX', 19310.00,
LAST_INSERT_ID()),
('Gigabyte H310M S2H', 'H310, Socket 1151-V2, DDR4, mATX', 4790.00,
LAST_INSERT_ID()),
('MSI B250M GAMING PRO', 'B250, Socket 1151, DDR4, mATX', 5060.00,
LAST_INSERT_ID());
SELECT * FROM catalogs;
SELECT id, name description, price, catalog_id FROM products;
 

drop table products_new;
CREATE TABLE products_new (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT '��������',
description TEXT COMMENT '��������',
price DECIMAL (11,2) COMMENT '����',
catalog_id INT UNSIGNED,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY index_of_catalog_id (catalog_id)
) COMMENT = '�������� �������';

SELECT
  *
FROM
  products_new

  INSERT INTO
products_new
SELECT
NULL, name, description, price, catalog_id, NOW(), NOW()
FROM
products
GROUP BY
name, description, price, catalog_id;