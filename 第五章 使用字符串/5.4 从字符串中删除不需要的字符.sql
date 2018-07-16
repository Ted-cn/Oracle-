--5.4 从字符串中删除不需要的字符

SELECT ename, regexp_replace(ename, '[AEIOU]') from emp where deptno = 10;
