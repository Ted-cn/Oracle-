--5.11 �ֽ�IP��ַ
CREATE OR REPLACE VIEW V AS
SELECT '192.168.1.118' AS IP FROM DUAL;

SELECT * FROM V;

SELECT REGEXP_SUBSTR(V.IP, '[^.]+', 1, 1) A,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 2) B,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 3) C,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 4) D
  FROM V;
  
--srcstr����Ҫ������������ַ���
--pattern������ƥ���������ʽ
--position����ʼλ�ã��ӵڼ����ַ���ʼ������ʽƥ�䣨Ĭ��Ϊ1��
--occurrence����ʶ�ڼ���ƥ���飬Ĭ��Ϊ1
--modifier��ģʽ��'i'�����ִ�Сд���м�����'c'���ִ�Сд���м�����Ĭ��Ϊ'c'����  
  
