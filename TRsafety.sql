create TRIGGER safety
ON DATABASE 
FOR DROP_TABLE 
AS 
PRINT 'Отключите триггер "safety" для удаления таблиц!' 
ROLLBACK;
