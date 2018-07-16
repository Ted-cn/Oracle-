-- 5.6 查询只包含字母或数字型的数据
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
--"^"不在方括号里时表示字符串开始，'$'在方括号外面表示字符串结束
--"*"表示匹配前面的子表达式零次或多次，"+"表示一次或多次

















