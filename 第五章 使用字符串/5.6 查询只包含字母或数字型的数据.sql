-- 5.6 ��ѯֻ������ĸ�������͵�����
CREATE OR REPLACE VIEW V AS 
SELECT '123' AS DATA
  FROM DUAL
UNION ALL
SELECT 'ABC'
  FROM DUAL
UNION ALL
SELECT '123ABC'
  FROM DUAL
UNION ALL
SELECT 'A1B2C3'
  FROM DUAL
UNION ALL
SELECT 'A1B2C3#'
  FROM DUAL
UNION ALL
SELECT '3$'
  FROM DUAL
UNION ALL
SELECT 'A 2'
  FROM DUAL 
UNION ALL
SELECT '$2'
  FROM DUAL;
  
SELECT data from v;  
SELECT data from v where regexp_like(data, '^[0-9a-zA-Z]*$');
--"^"���ڷ�������ʱ��ʾ�ַ�����ʼ��'$'�ڷ����������ʾ�ַ�������
--"*"��ʾƥ��ǰ����ӱ��ʽ��λ��Σ�"+"��ʾһ�λ���

















