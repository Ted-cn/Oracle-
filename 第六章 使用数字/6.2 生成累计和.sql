--6.2 �����ۼƺ�
SELECT EMPNO AS ���,
       ENAME AS ����,
       SAL AS �˹��ɱ�,
       SUM(SAL) OVER(ORDER BY EMPNO) AS �ۼƳɱ�
  FROM EMP
 WHERE DEPTNO = 30
 ORDER BY EMPNO;
