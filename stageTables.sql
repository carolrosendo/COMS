-----Stage tables populated by Talend

SELECT * FROM stage_warehouse.classdb.bankaccountholdingreference;
SELECT * FROM stage_warehouse.classdb.brand;
SELECT * FROM stage_warehouse.classdb.bsb;
SELECT * FROM stage_warehouse.classdb.classificationitem;
SELECT * FROM stage_warehouse.classdb.classificationitemrelationship;
SELECT * FROM stage_warehouse.classdb.financialinstitution;
SELECT * FROM stage_warehouse.classdb.fund;
SELECT * FROM stage_warehouse.classdb.fundholdingreference;
SELECT * FROM stage_warehouse.classdb.electroniccontact;
SELECT * FROM stage_warehouse.classdb.fundperiodprocess;
SELECT * FROM stage_warehouse.classdb.holdingaccount;
SELECT * FROM stage_warehouse.classdb.market;
SELECT * FROM stage_warehouse.classdb.product;
SELECT * FROM stage_warehouse.classdb.provider;
SELECT * FROM stage_warehouse.classdb.scope;
SELECT * FROM stage_warehouse.classdb.securityissue;
SELECT * FROM stage_warehouse.classdb.feedbalances;
SELECT * FROM stage_warehouse.classdb.feedaccount;
SELECT * FROM stage_warehouse.classdb.feedholdingaccount;


SELECT * FROM stage_warehouse.classdb.service_product;
SELECT * FROM stage_warehouse.classdb.service_provider;
SELECT * FROM stage_warehouse.classdb.funddetails;
SELECT * FROM stage_warehouse.salesforce.account;
SELECT * FROM stage_warehouse.salesforce.user;
SELECT * FROM stage_warehouse.salesforce.opportunity;
SELECT * FROM stage_warehouse.salesforce.contact;

select * from  stage_warehouse.classdb.electroniccontact where d_current = 0;

select * from  stage_warehouse.classdb.brand where d_current = 0;
SELECT * FROM stage_warehouse.classdb.feedholdingaccount WHERE D_END < D_START;

TRUNCATE TABLE stage_warehouse.classdb.bankaccountholdingreference;
TRUNCATE TABLE stage_warehouse.classdb.brand;
TRUNCATE TABLE stage_warehouse.classdb.bsb;
TRUNCATE TABLE stage_warehouse.classdb.classificationitem;
TRUNCATE TABLE stage_warehouse.classdb.classificationitemrelationship;

TRUNCATE TABLE stage_warehouse.classdb.financialinstitution;
TRUNCATE TABLE stage_warehouse.classdb.fund;
TRUNCATE TABLE stage_warehouse.classdb.fundholdingreference;
TRUNCATE TABLE stage_warehouse.classdb.electroniccontact;
TRUNCATE TABLE stage_warehouse.classdb.fundperiodprocess;
TRUNCATE TABLE stage_warehouse.classdb.holdingaccount;
TRUNCATE TABLE stage_warehouse.classdb.market;
TRUNCATE TABLE stage_warehouse.classdb.product;
TRUNCATE TABLE stage_warehouse.classdb.provider;
TRUNCATE TABLE stage_warehouse.classdb.scope;
TRUNCATE TABLE stage_warehouse.classdb.securityissue;
TRUNCATE TABLE stage_warehouse.classdb.feedbalances;
TRUNCATE TABLE stage_warehouse.classdb.feedaccount;
TRUNCATE TABLE stage_warehouse.classdb.feedholdingaccount;
TRUNCATE TABLE stage_warehouse.classdb.service_product;
TRUNCATE TABLE stage_warehouse.classdb.service_provider;
TRUNCATE TABLE stage_warehouse.classdb.funddetails;
TRUNCATE TABLE stage_warehouse.salesforce.account;
TRUNCATE TABLE stage_warehouse.salesforce.user;
TRUNCATE TABLE stage_warehouse.salesforce.opportunity;
TRUNCATE TABLE stage_warehouse.salesforce.contact;



SELECT 'SELECT * FROM '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+';', 'TRUNCATE TABLE '+TABLE_CATALOG+'.'+TABLE_SCHEMA+'.'+TABLE_NAME+';'
FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
and TABLE_CATALOG = 'stage_warehouse';

--1 job
------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.bankaccountholdingreference
where d_current = 1
group by nk_bankaccountholdingreference having count(*) > 1;

select count(*) from stage_warehouse.classdb.brand
where d_current = 1
group by nk_brand having count(*) > 1;

select count(*) from stage_warehouse.classdb.bsb
where d_current = 1
group by nk_bsb having count(*) > 1;

select count(*) from stage_warehouse.classdb.classificationitem
where d_current = 1
group by nk_classificationitem having count(*) > 1;

select count(*) from stage_warehouse.classdb.classificationitemrelationship
where d_current = 1
group by nk_classificationitemrelationship having count(*) > 1;

--2 job
------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.financialinstitution
where d_current = 1
group by nk_financialinstitution having count(*) > 1;

select count(*) from stage_warehouse.classdb.fund
where d_current = 1
group by nk_fund having count(*) > 1;

select count(*) from stage_warehouse.classdb.fundholdingreference
where d_current = 1
group by nk_fundholdingreference having count(*) > 1;

-------

select nk_fundholdingreference from stage_warehouse.classdb.fundholdingreference
where d_current = 1
group by nk_fundholdingreference having count(*) > 1;

select * from stage_warehouse.classdb.fundholdingreference
where d_current = 1 and nk_fundholdingreference = 'f3f1fc33-6c55-4f06-ad21-39cbea4662c8';






--3 job
------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.electroniccontact
where d_current = 1
group by nk_electroniccontact having count(*) > 1;

select count(*) from stage_warehouse.classdb.fundperiodprocess
where d_current = 1
group by nk_fundperiodprocess having count(*) > 1;

--4 job
------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.holdingaccount
where d_current = 1
group by nk_holdingaccount having count(*) > 1;

--5 job
------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.market
where d_current = 1
group by nk_market having count(*) > 1;

select count(*) from stage_warehouse.classdb.product
where d_current = 1
group by nk_product having count(*) > 1;

select count(*) from stage_warehouse.classdb.provider
where d_current = 1
group by nk_provider having count(*) > 1;

select count(*) from stage_warehouse.classdb.scope
where d_current = 1
group by nk_scope having count(*) > 1;

select count(*) from stage_warehouse.classdb.securityissue
where d_current = 1
group by nk_securityissue having count(*) > 1;


--6 job
------------------------------------------------------------------------------

select nk_feedbalances, count(*) from stage_warehouse.classdb.feedbalances
where d_current = 1
group by nk_feedbalances having count(*) > 1;

select nk_feedaccount, count(*) from stage_warehouse.classdb.feedaccount
where d_current = 1
group by nk_feedaccount having count(*) > 1;

select nk_feedholdingaccount, count(*) from stage_warehouse.classdb.feedholdingaccount
where d_current = 1
group by nk_feedholdingaccount having count(*) > 1;



--7 Job
---------------------------------------------------------------------------------
select count(*) from stage_warehouse.classdb.service_product
where d_current = 1
group by nk_service_product having count(*) > 1;

select count(*) from stage_warehouse.classdb.service_provider
where d_current = 1
group by nk_service_provider having count(*) > 1;

select count(*) from stage_warehouse.classdb.funddetails
where d_current = 1
group by nk_funddetails having count(*) > 1;

--8 Job
---------------------------------------------------------------------------------
select count(*) from stage_warehouse.salesforce.account
where d_current = 1
group by nk_account having count(*) > 1;

select count(*) from stage_warehouse.salesforce."user"
where d_current = 1
group by nk_user having count(*) > 1;

select count(*) from stage_warehouse.salesforce.opportunity
where d_current = 1
group by nk_opportunity having count(*) > 1;

select count(*) from stage_warehouse.salesforce.contact
where d_current = 1
group by nk_contact having count(*) > 1;



----------------------------------------------------------------------------------
--Script Delete dup rows



delete from stage_warehouse.classdb.fundholdingreference
where sk_fundholdingreference in(
select min(sk_fundholdingreference) from stage_warehouse.classdb.fundholdingreference
where nk_fundholdingreference in(
select nk_fundholdingreference from stage_warehouse.classdb.fundholdingreference
where d_current = 1
group by nk_fundholdingreference having count(*) > 1) 
and d_current = 1 group by nk_fundholdingreference );


delete from stage_warehouse.classdb.fundperiodprocess
where sk_fundperiodprocess in(
select min(sk_fundperiodprocess) from stage_warehouse.classdb.fundperiodprocess
where nk_fundperiodprocess in(
select nk_fundperiodprocess from stage_warehouse.classdb.fundperiodprocess
where d_current = 1
group by nk_fundperiodprocess having count(*) > 1) and d_current = 1  group by nk_fundperiodprocess);


delete from stage_warehouse.classdb.holdingaccount
where sk_holdingaccount in(
select min(sk_holdingaccount) from stage_warehouse.classdb.holdingaccount
where nk_holdingaccount in(
select nk_holdingaccount from stage_warehouse.classdb.holdingaccount
where d_current = 1
group by nk_holdingaccount having count(*) > 1) and d_current = 1 group by nk_holdingaccount);


delete from stage_warehouse.classdb.securityissue
where sk_securityissue in(
select min(sk_securityissue) from stage_warehouse.classdb.securityissue
where nk_securityissue in(
select nk_securityissue from stage_warehouse.classdb.securityissue
where d_current = 1
group by nk_securityissue having count(*) > 1) and d_current = 1 group by nk_securityissue);


delete from stage_warehouse.classdb.feedaccount
where sk_feedaccount in(
select min(sk_feedaccount) from stage_warehouse.classdb.feedaccount
where nk_feedaccount in(
select nk_feedaccount from stage_warehouse.classdb.feedaccount
where d_current = 1
group by nk_feedaccount having count(*) > 1) and d_current = 1 group by nk_feedaccount);

delete from stage_warehouse.classdb.feedholdingaccount
where sk_feedholdingaccount in(
select min(sk_feedholdingaccount) from stage_warehouse.classdb.feedholdingaccount
where nk_feedholdingaccount in(
select nk_feedholdingaccount from stage_warehouse.classdb.feedholdingaccount
where d_current = 1
group by nk_feedholdingaccount having count(*) > 1) and d_current = 1 
group by nk_feedholdingaccount);


delete from stage_warehouse.classdb.feedbalances
where sk_feedbalances in(
select min(sk_feedbalances) from stage_warehouse.classdb.feedbalances
where nk_feedbalances in(
select nk_feedbalances from stage_warehouse.classdb.feedbalances
where d_current = 1
group by nk_feedbalances having count(*) > 1) and d_current = 1 
group by nk_feedbalances);



delete from stage_warehouse.classdb.funddetails
where sk_funddetails in(
select min(sk_funddetails) from stage_warehouse.classdb.funddetails
where nk_funddetails in(
select nk_funddetails from stage_warehouse.classdb.funddetails
where d_current = 1
group by nk_funddetails having count(*) > 1) and d_current = 1 
group by nk_funddetails);


alter table landing.classdb.feedaccount alter column  DefaultDisplayName varchar(300);

alter table stage_warehouse.classdb.feedaccount alter column  DefaultDisplayName varchar(300);

alter table raw_warehouse.classdb.feedaccount alter column  DefaultDisplayName varchar(300);

alter table coms_bi.dbo.feedaccount alter column  DefaultDisplayName varchar(300);





------CHECKING DUPS


--------------------------------------------------------------------------------------------------------------------------------
------FEED BALANCES DUPLICATES
--feed balance is the same that feed account id
select *
into landing.classdb.feedbalances_dup
 from landing.classdb.feedbalances
where  FeedID+'~'+HoldingAccountCode in (
select nk_feedbalances from stage_warehouse.classdb.feedbalances
where d_current = 1
group by nk_feedbalances having count(*) > 1)
and batch_id = 192 order by feedid, HoldingAccountCode;


select * from landing.classdb.feedbalances
where FeedID+'~'+HoldingAccountCode  in('0ab4e5a6-2c73-4ddf-b995-01038d7d0043~FIRSTWRAP') and batch_id = 192;

select a.*, b.AccountName, b.BusinessCode, b.BusinessName, b.FeedDescription, b.FeedStatus, b.FundCode, b.FundId, b.FundName
 into landing.classdb.feedbalances_dup_acc
from landing.classdb.feedbalances_dup a
inner join stage_warehouse.classdb.feedaccount b
on a.FeedId = b.nk_feedaccount
where b.d_current = 1;


select * from landing.classdb.feedbalances_dup_acc;




select b.*, a.MarketType, a.nk_feedholdingaccount, a.MarketCode 
from coms_bi.dbo.feedholdingaccount a
inner join landing.classdb.feedbalances_dup_acc  b
on a.fnk_feedaccount = b.FeedId
and a.Code = b.HoldingAccountCode
where a.d_current = 1;


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

---HOLDING ACCOUNT DUPLICATES

select * into feedholdingaccount_dup
 from landing.classdb.feedholdingaccount
where id in(
select nk_feedholdingaccount
from stage_warehouse.classdb.feedholdingaccount
where d_current = 1
group by nk_feedholdingaccount having count(*) > 1);


select distinct * from feedholdingaccount_dup 
where batch_id = 194 order by id, code;




