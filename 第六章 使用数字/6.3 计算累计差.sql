--6.3 计算累计差
DROP TABLE DETAIL PURGE;
CREATE TABLE DETAIL AS 
  SELECT 1000 AS 编号, '预交费用' AS 项目, 30000 AS 金额 FROM DUAL;
INSERT INTO DETAIL
  SELECT EMPNO AS 编号, '支出' || ROWNUM AS 项目, SAL + 1000 AS 金额
    FROM EMP
   WHERE DEPTNO = 10;
COMMIT;
SELECT * FROM detail;

--使用CASE WHEN把支出转换为负数
WITH X AS
 (SELECT ROWNUM AS SEQ, A.* FROM (SELECT * FROM DETAIL ORDER BY 1) A)
SELECT 编号,
       项目,
       金额,
       SUM(CASE
             WHEN SEQ = 1 THEN
              金额
             ELSE
              -金额
           END) OVER(ORDER BY SEQ) AS 余额
  FROM X;



