--6.1 ���þ۽�����
SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT DEPTNO,
       AVG(SAL) AS ƽ��ֵ,
       MIN(SAL) AS ��Сֵ,
       MAX(SAL) AS ���ֵ,
       SUM(SAL) AS ���ʺϼ�,
       COUNT(*) AS ������,
       COUNT(COMM) �����ɵ�����,
       AVG(COMM) ������˾�����㷨,  --��Ҫ�ѿ�ֵת��Ϊ0������ͳ�Ƶ�������������ֵ
       AVG(COALESCE(COMM, 0)) ��ȷ���˾����
  FROM EMP
 GROUP BY DEPTNO;
