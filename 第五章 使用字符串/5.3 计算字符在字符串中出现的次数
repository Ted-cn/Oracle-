--5.3 计算字符在字符串中出现的次数

--求出'CLARK, KING, MILLER'的子串个数
create or replace view v as select 'CLARK, KING, MILLER' AS STR FROM DUAL;

-- Oracle 11g给出的新函数
--SELECT regexp_count(STR, ',') + 1 AS CNT FROM V; --3

SELECT length(regexp_replace(str, '[^,]')) + 1 as cnt from v;
