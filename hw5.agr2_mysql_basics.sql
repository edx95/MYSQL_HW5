-- ���� ���������, ������� 2
-- ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������.
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.

use MYSHOP;
show TABLES;
select * from users;


SELECT
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
  COUNT(*) AS total
FROM
  users
GROUP BY
  day
ORDER BY
  total DESC;