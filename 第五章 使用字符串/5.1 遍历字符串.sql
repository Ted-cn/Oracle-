--5.1 �����ַ���
CREATE OR REPLACE VIEW V AS SELECT '��������' AS ����, 'TTXS' AS ��ƴ FROM DUAL; 

--CONNECT BY�����β�ѯ�е�һ���Ӿ䣬�����LEVEL��һ����α�С�
SELECT LEVEL FROM DUAL CONNECT BY LEVEL <= 4;

SELECT V.����, V.��ƴ, LEVEL FROM V CONNECT BY LEVEL <= LENGTH(V.����);

SELECT V.����,
       V.��ƴ,
       LEVEL,
       SUBSTR(V.����, LEVEL, 1) AS ���ֲ��,
       SUBSTR(V.��ƴ, LEVEL, 1) AS ��ƴ���
  FROM V
CONNECT BY LEVEL <= LENGTH(V.����)
