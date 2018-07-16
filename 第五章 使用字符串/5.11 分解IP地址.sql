--5.11 分解IP地址
CREATE OR REPLACE VIEW V AS
SELECT '192.168.1.118' AS IP FROM DUAL;

SELECT * FROM V;

SELECT REGEXP_SUBSTR(V.IP, '[^.]+', 1, 1) A,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 2) B,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 3) C,
       REGEXP_SUBSTR(V.IP, '[^.]+', 1, 4) D
  FROM V;
  
--srcstr：需要进行正则处理的字符串
--pattern：进行匹配的正则表达式
--position：起始位置，从第几个字符开始正则表达式匹配（默认为1）
--occurrence：标识第几个匹配组，默认为1
--modifier：模式（'i'不区分大小写进行检索；'c'区分大小写进行检索。默认为'c'。）  
  
