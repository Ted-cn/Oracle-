--6.3 �����ۼƲ�
DROP TABLE DETAIL PURGE;
CREATE TABLE DETAIL AS 
  SELECT 1000 AS ���, 'Ԥ������' AS ��Ŀ, 30000 AS ��� FROM DUAL;
INSERT INTO DETAIL
  SELECT EMPNO AS ���, '֧��' || ROWNUM AS ��Ŀ, SAL + 1000 AS ���
    FROM EMP
   WHERE DEPTNO = 10;
COMMIT;
SELECT * FROM detail;

--ʹ��CASE WHEN��֧��ת��Ϊ����
WITH X AS
 (SELECT ROWNUM AS SEQ, A.* FROM (SELECT * FROM DETAIL ORDER BY 1) A)
SELECT ���,
       ��Ŀ,
       ���,
       SUM(CASE
             WHEN SEQ = 1 THEN
              ���
             ELSE
              -���
           END) OVER(ORDER BY SEQ) AS ���
  FROM X;



