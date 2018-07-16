--6.1 常用聚焦函数
SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT DEPTNO,
       AVG(SAL) AS 平均值,
       MIN(SAL) AS 最小值,
       MAX(SAL) AS 最大值,
       SUM(SAL) AS 工资合计,
       COUNT(*) AS 总行数,
       COUNT(COMM) 获得提成的人数,
       AVG(COMM) 错误的人均提成算法,  --需要把空值转化为0，否则统计的总人数不含空值
       AVG(COALESCE(COMM, 0)) 正确的人均提成
  FROM EMP
 GROUP BY DEPTNO;
