
-- ���� ��������, ������� 2
-- ������� users ���� �������� ��������������.
-- ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ����������
-- �������� � ������� "20.10.2017 8:10".
-- ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
drop database MYSHOP2;
create database MYSHOP2;
use MYSHOP2;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = '����������';

select * from users;

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('��������', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('�������', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('���������', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('������', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('����', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('�����', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56');

UPDATE
  users
SET
  created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
  updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
ALTER TABLE
  users
CHANGE
  created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE
  users
CHANGE
  updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

DESCRIBE users;
