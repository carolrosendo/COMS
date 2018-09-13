SELECT   
    c.session_id, c.net_transport, c.encrypt_option,   
    c.auth_scheme, s.host_name, s.program_name,   
    s.client_interface_name, s.login_name, s.nt_domain,   
    s.nt_user_name, s.original_login_name, c.connect_time,   
    s.login_time   
FROM sys.dm_exec_connections AS c  
JOIN sys.dm_exec_sessions AS s  
    ON c.session_id = s.session_id  ;



KILL 69  ;
KILL 70  ;



SELECT 
    t.NAME AS TableName,
    s.Name AS SchemaName,
    p.rows AS RowCounts,
    SUM(a.total_pages) * 8 AS TotalSpaceKB, 
    CAST(ROUND(((SUM(a.total_pages) * 8) / 1024.00), 2) AS NUMERIC(36, 2)) AS TotalSpaceMB,
    SUM(a.used_pages) * 8 AS UsedSpaceKB, 
    CAST(ROUND(((SUM(a.used_pages) * 8) / 1024.00), 2) AS NUMERIC(36, 2)) AS UsedSpaceMB, 
    (SUM(a.total_pages) - SUM(a.used_pages)) * 8 AS UnusedSpaceKB,
    CAST(ROUND(((SUM(a.total_pages) - SUM(a.used_pages)) * 8) / 1024.00, 2) AS NUMERIC(36, 2)) AS UnusedSpaceMB
FROM 
    sys.tables t
INNER JOIN      
    sys.indexes i ON t.OBJECT_ID = i.object_id
INNER JOIN 
    sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
INNER JOIN 
    sys.allocation_units a ON p.partition_id = a.container_id
LEFT OUTER JOIN 
    sys.schemas s ON t.schema_id = s.schema_id
WHERE 
    t.NAME NOT LIKE 'dt%' 
    AND t.is_ms_shipped = 0
    AND i.OBJECT_ID > 255 
GROUP BY 
    t.Name, s.Name, p.Rows
ORDER BY 
    t.Name;




USE stage_warehouse;  
GO  
-- Truncate the log by changing the database recovery model to SIMPLE.  
ALTER DATABASE stage_warehouse
SET RECOVERY SIMPLE;  
GO  
-- Shrink the truncated log file to 1 MB.  
DBCC SHRINKFILE (stage_warehouse_log, 1);  
GO  
-- Reset the database recovery model.  
ALTER DATABASE stage_warehouse
SET RECOVERY FULL;  
GO 



select * from sys.database_files;
select a.name, a.recovery_model, a.recovery_model_desc from sys.databases a ;



SELECT * FROM sys.availability_groups;



	

select * from raw_warehouse.classdb.holdingaccount ha
inner join raw_warehouse.classdb.propertyaddress pa
on ha.addressid = pa.id
inner join raw_warehouse.classdb.fund f

where ha.class = 'PropertyAccount';





select nk_fundperiodprocess, count(*) from stage_warehouse.classdb.fundperiodprocess
group by nk_fundperiodprocess
having count(*) > 1;



select *
,b_table
 from raw_warehouse.dbo.batch where 
--b_status = 'raw' and 
--b_schema = 'classdb'

-- explicit list
 b_table  in (
'funddetails'
)

;

update raw_warehouse.dbo.batch set b_status = 'raw' where batch_id = 1441 and b_table in ( 'funddetails');

delete from raw_warehouse.dbo.batch where batch_id in(1414,
1419,
1421);


select *from stage_warehouse.classdb.funddetails;
USE stage_warehouse;
drop sequence SQ_SK_FUNDHOLDINGREFERENCE;
CREATE SEQUENCE SQ_SK_FUNDHOLDINGREFERENCE START WITH 1 INCREMENT BY 1;

truncate table stage_warehouse.classdb.funddetails
ALTER TABLE stage_warehouse.classdb.funddetails 
add  row_hash varchar(100);

truncate table stage_warehouse.classdb.FUNDHOLDINGREFERENCE;
truncate table stage_warehouse.classdb.fund;
truncate table stage_warehouse.classdb.electroniccontact;
truncate table stage_warehouse.classdb.fundperiodprocess;

select id, count(*) from 	stage_warehouse.classdb.FUNDHOLDINGREFERENCE where d_current = 1
group by id having count(*) >1;

delete from stage_warehouse.classdb.funddetails where nk_funddetails in(
select nk_funddetails from 	stage_warehouse.classdb.funddetails where d_current = 1
group by nk_funddetails having count(*) >1);


select max(sk_fundholdingreference) from stage_warehouse.classdb.FUNDHOLDINGREFERENCE;


select distinct batch_id from stage_warehouse.classdb.FUNDHOLDINGREFERENCE;

select distinct load_date from 	raw_warehouse.classdb.FUNDHOLDINGREFERENCE where batch_id = 1448; LOAD_dATE is null and batch_;



select * from coms_bi.dbo.fund;
USE stage_warehouse;

CREATE SEQUENCE SQ_SK_FUNDDETAILS START WITH 1 INCREMENT BY 1;

truncate table coms_bi.dbo.feedaccount 
ALTER TABLE coms_bi.dbo.feedaccount 
add  AdviserCode varchar(50);


