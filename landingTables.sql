select * from landing.dbo.batch where b_status = 'raw' order by created desc;

select * from landing.dbo.batch where b_table IN( 'feedaccount','feedholdingaccount','feedbalances') order by created desc;


SELECT id, count(*) FROM landing.classdb.fundholdingreference 
where batch_id = 173
group by id having count(*) > 1;

delete from landing.dbo.batch where batch_id = 191 and b_table = 'feedaccount'

update landing.dbo.batch set b_status ='raw' where batch_id = 194 and b_table = 'feedholdingaccount';
update landing.dbo.batch set b_status ='raw' where batch_id = 193 and b_table = 'feedaccount';
update landing.dbo.batch set b_status ='raw' where batch_id = 192 and b_table = 'feedbalances';

--insert into landing.dbo.batch values(80,'raw','classdb','holdingaccount',null,CURRENT_TIMESTAMP, 80, 81);

--insert into landing.dbo.batch values(93,'raw','salesforce','contact','2018-07-17 00:24:09.000',CURRENT_TIMESTAMP,93,94);

SELECT TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
and TABLE_CATALOG = 'landing';


-----------------------------------------------------------------------------
select * from landing.classdb.funddetails;
SELECT * FROM landing.classdb.service_product;
SELECT * FROM landing.classdb.service_provider;
alter table landing.classdb.service_provider add row_hash varchar(500);
alter table landing.classdb.service_product add row_hash varchar(500);

------------------------------------------------------------------------------
SELECT * FROM landing.salesforce.account;
SELECT * FROM landing.salesforce."user";
SELECT * FROM landing.salesforce.opportunity;
SELECT * FROM landing.salesforce.contact;

alter table  landing.salesforce.account add row_hash varchar(500);
alter table  landing.salesforce."user" add row_hash varchar(500);
alter table  landing.salesforce.opportunity add row_hash varchar(500);
alter table  landing.salesforce.contact add row_hash varchar(500);
------------------------------------------------------------------------------


SELECT * FROM landing.classdb.bankaccountholdingreference;
SELECT * FROM landing.classdb.brand;
SELECT * FROM landing.classdb.bsb;
SELECT * FROM landing.classdb.classificationitem;
SELECT * FROM landing.classdb.classificationitemrelationship;
SELECT * FROM landing.classdb.financialinstitution;
SELECT * FROM landing.classdb.fund;
SELECT * FROM landing.classdb.fundholdingreference;
SELECT * FROM landing.classdb.electroniccontact;

truncate table  landing.classdb.bankaccountholdingreference;
truncate table  landing.classdb.brand;
truncate table  landing.classdb.bsb;
truncate table  landing.classdb.classificationitem;
truncate table  landing.classdb.classificationitemrelationship;
truncate table  landing.classdb.financialinstitution;
truncate table  landing.classdb.fund;
truncate table  landing.classdb.fundholdingreference;
truncate table  landing.classdb.electroniccontact;


alter table   landing.classdb.bankaccountholdingreference add row_hash varchar(500);
alter table   landing.classdb.brand add row_hash varchar(500);
alter table   landing.classdb.bsb add row_hash varchar(500);
alter table   landing.classdb.classificationitem add row_hash varchar(500);
alter table   landing.classdb.classificationitemrelationship add row_hash varchar(500);
alter table   landing.classdb.financialinstitution add row_hash varchar(500);
alter table   landing.classdb.fund add row_hash varchar(500);
alter table   landing.classdb.fundholdingreference add row_hash varchar(500);
alter table   landing.classdb.electroniccontact add row_hash varchar(500);

------------------------------------------------------------------------------
SELECT * FROM landing.classdb.fundperiodprocess;
SELECT * FROM landing.classdb.holdingaccount;

truncate table  landing.classdb.fundperiodprocess;
truncate table  landing.classdb.holdingaccount;

alter table   landing.classdb.fundperiodprocess add row_hash varchar(500);
alter table   landing.classdb.holdingaccount add row_hash varchar(500);


SELECT batch_id, count(*) FROM landing.classdb.fundperiodprocess group by batch_id;

delete from landing.classdb.fundperiodprocess where batch_id = 77;
------------------------------------------------------------------------------

SELECT * FROM landing.classdb.market;
SELECT * FROM landing.classdb.product;
SELECT * FROM landing.classdb."provider";
SELECT * FROM landing.classdb.scope;
SELECT * FROM landing.classdb.securityissue;

alter table   landing.classdb.market add row_hash varchar(500);
alter table   landing.classdb.product add row_hash varchar(500);
alter table   landing.classdb."provider" add row_hash varchar(500);
alter table   landing.classdb.scope add row_hash varchar(500);
alter table   landing.classdb.securityissue add row_hash varchar(500);


------------------------------------------------------------------------------

SELECT * FROM landing.classdb.feedbalances;
SELECT * FROM landing.classdb.feedaccount;
SELECT * FROM landing.classdb.feedholdingaccount;

alter table   landing.classdb.feedbalances add row_hash varchar(500);
alter table   landing.classdb.feedaccount add row_hash varchar(500);
alter table   landing.classdb.feedholdingaccount add row_hash varchar(500);

------------------------------------------------------------------------------



SELECT * FROM landing.classdb.feedaccount where batch_id = 136;



select * from landing.classdb.feedholdingaccount;




SELECT * FROM raw_warehouse.dbo.batch
where b_table like 'feed%';;





select * from landing.classdb.feedbalances
where FeedId in(
'3d76ea3c-4e6a-4fd1-a6db-c7987d49c64a'
) and HoldingAccountCode= 'S32';



select * from raw_warehouse.classdb.feedbalances
where FeedId in(
'3d76ea3c-4e6a-4fd1-a6db-c7987d49c64a'
) and HoldingAccountCode= 'S32'
