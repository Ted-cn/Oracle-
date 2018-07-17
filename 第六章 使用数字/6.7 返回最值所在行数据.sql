--6.7 返回最值所在行数据
SELECT DEPTNO,
       EMPNO,
       MAX(ENAME) KEEP (DENSE_RANK FIRST ORDER BY SAL) OVER (PARTITION BY DEPTNO) AS 工资最低的人,
       MAX(ENAME) KEEP (DENSE_RANK LAST  ORDER BY SAL) OVER (PARTITION BY DEPTNO) AS 工资最高的人,
       ENAME,
       SAL
  FROM EMP
 WHERE DEPTNO = 10
 ORDER BY 1, 6 DESC;
