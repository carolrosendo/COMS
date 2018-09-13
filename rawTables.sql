
SELECT 'SELECT * FROM '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+';', 'TRUNCATE TABLE '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+';'
FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
and TABLE_CATALOG = 'raw_warehouse';


SELECT * FROM raw_warehouse.classdb.financialinstitution;
SELECT * FROM raw_warehouse.classdb.bsb;
SELECT * FROM raw_warehouse.classdb.feedbalances;
SELECT * FROM raw_warehouse.classdb.service_provider;
SELECT * FROM raw_warehouse.salesforce.opportunity;
SELECT * FROM raw_warehouse.classdb.service_product;
SELECT * FROM raw_warehouse.dbo.batch_bkp;
SELECT * FROM raw_warehouse.dbo.batch;
SELECT * FROM raw_warehouse.classdb.holdingaccount;
SELECT * FROM raw_warehouse.dbo.batch_bkp_2;
SELECT * FROM raw_warehouse.classdb.scope;
SELECT * FROM raw_warehouse.classdb.feedaccount;
SELECT * FROM raw_warehouse.classdb.brand;
SELECT * FROM raw_warehouse.classdb.bankaccountholdingreference;
SELECT * FROM raw_warehouse.classdb.fundholdingreference;
SELECT * FROM raw_warehouse.classdb.securityissue;
SELECT * FROM raw_warehouse.classdb.funddetails;
SELECT * FROM raw_warehouse.classdb.fund;
SELECT * FROM raw_warehouse.classdb.electroniccontact;
SELECT * FROM raw_warehouse.classdb.feedholdingaccount;
SELECT * FROM raw_warehouse.dbo.sysdiagrams;
SELECT * FROM raw_warehouse.classdb.market;
SELECT * FROM raw_warehouse.salesforce.user;
SELECT * FROM raw_warehouse.classdb.product;
SELECT * FROM raw_warehouse.salesforce.contact;
SELECT * FROM raw_warehouse.classdb.provider;
SELECT * FROM raw_warehouse.classdb.classificationitem;
SELECT * FROM raw_warehouse.classdb.classificationitemrelationship;
SELECT * FROM raw_warehouse.classdb.fundperiodprocess;
SELECT * FROM raw_warehouse.salesforce.account;


SELECT 'ALTER TABLE '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+' ADD  row_hash varchar(500);', 'TRUNCATE TABLE '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+';'
FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
and TABLE_CATALOG = 'raw_warehouse';


ALTER TABLE raw_warehouse.classdb.financialinstitution ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.bsb ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.feedbalances ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.service_provider ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.salesforce.opportunity ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.service_product ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.holdingaccount ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.scope ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.feedaccount ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.brand ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.bankaccountholdingreference ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.fundholdingreference ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.securityissue ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.funddetails ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.fund ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.electroniccontact ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.feedholdingaccount ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.market ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.salesforce."user" ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.product ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.salesforce.contact ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb."provider" ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.classificationitem ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.classificationitemrelationship ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.classdb.fundperiodprocess ADD  row_hash varchar(500);
ALTER TABLE raw_warehouse.salesforce.account ADD  row_hash varchar(500);


SELECT * FROM raw_warehouse.dbo.batch
where b_table ='feedholdingaccount';

select count(*) from  raw_warehouse.classdb.feedholdingaccount where batch_id = 1590;

drop table landing.classdb.feedholdingaccount;

select *
into landing.classdb.feedholdingaccount
from raw_warehouse.classdb.feedholdingaccount
 where batch_id = 1590;