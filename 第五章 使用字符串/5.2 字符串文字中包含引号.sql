--5.2 �ַ��������а�������
--�ַ�����д�����ţ�ֻ��Ҫ��һ�������Ż������������ż���
SELECT 'G''DAY MATE' QMARKS
  FROM DUAL
UNION ALL
SELECT 'BEAVERS''TEETH'
  FROM DUAL
UNION ALL
SELECT '''' FROM DUAL;

--ʹ��Q-QUOTE�綨��
--Q-QUOTE�綨�������ǳ���TAB���ո񡢻س�������κε��ֽڻ���ֽ��ַ�
SELECT Q'[G'DAY MATE]' QMARKS
  FROM DUAL
UNION ALL
SELECT Q'[BEAVERS'TEETH]'
  FROM DUAL
UNION ALL
SELECT Q'[']' FROM DUAL;
