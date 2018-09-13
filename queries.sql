truncate table customer;
truncate table opportunity;
truncate table implementationconsultant;
truncate table BUSINESS;
truncate table brand;
truncate table fundtype;
truncate table fund;
truncate table feedprovider;
truncate table feedproduct;


truncate table feedaccount;
truncate table feedholdingaccount;
truncate table feedbalance;



/**********ok************/
/***CUSTOMER MAPPING*****/

select nk_customer from customer;
select * from opportunity A WHERE A.NAME LIKE '%4C%';
select * from implementationconsultant;


SELECT * FROM (
select 
aa.sk_customer
,aa.nk_customer
,upper(oo.CL_Extra_Business_Code__c) as business_code
from coms_bi.dbo.opportunity oo inner join 
coms_bi.dbo.customer aa on aa.id = oo.accountid
where  (aa.d_current = 1) and (oo.d_current = 1)
and oo.CL_Extra_Business_Code__c is not null
and upper(oo.CL_Extra_Business_Code__c) like '%HAY%'
union all
select 
aa.sk_customer
,aa.nk_customer
,UPPER(aa.CL_Class_Business_Code__c)  as business_code
from coms_bi.dbo.customer aa
where  (aa.d_current = 1) and aa.CL_Class_Business_Code__c is not null
AND UPPER(aa.CL_Class_Business_Code__c) like '%HAY%'

) A
WHERE A.business_code = 'HAYDENFS'
;
SELECT A.CL_Extra_Business_Code__c, A.Name 
FROM  coms_bi.dbo.opportunity A WHERE NAME = '4C Financial Group';


SELECT *  FROM CUSTOMER A  WHERE NAME = '4C Financial Group';

SELECT *  FROM CUSTOMER A  WHERE CL_Class_Business_Code__c = 'HAYDENFS';



/**********ok************/
/***CUSTOMER MAPPING*****/
SELECT * FROM BUSINESS where fsk_customer is null;
SELECT * FROM BUSINESS where code in('ACCOUNTSMART', 'COLINWOODWARD' ,'DSACCOUNTANTS', '4CFG');
select * from brand;
SELECT * FROM fundtype;
select * from fund ;


/**********ok************/
/***FEED PROVIDER MAPPING****/
SELECT * FROM feedprovider;
SELECT * FROM feedproduct;

/**********ok************/
/***ACCOUNT MAPPING*****/


select * from feedaccount where nk_feedaccount in(
select nk_feedaccount from feedaccount
where d_current = 1
group by nk_feedaccount
having count(*) > 1);



select * from stage_warehouse.classdb.feedaccount where nk_feedaccount in(
select nk_feedaccount from stage_warehouse.classdb.feedaccount
where d_current = 1
group by nk_feedaccount
having count(*) > 1);


select * from stage_warehouse.classdb.holdingaccount where nk_holdingaccount in(
select nk_holdingaccount from stage_warehouse.classdb.holdingaccount
where d_current = 1
group by nk_holdingaccount
having count(*) > 1);

select * from feedholdingaccount where nk_feedholdingaccount in(
select a.nk_feedholdingaccount from feedholdingaccount a
where d_current = 1
group by nk_feedholdingaccount
having count(*) > 1);


select * from feedbalance where nk_feedbalance in(
select a.nk_feedbalance from feedbalance a
where d_current = 1
group by nk_feedbalance
having count(*) > 1);

delete from feedbalance where fnk_feedholdingaccount is null;

select * from feedholdingaccount
where sk_feedholdingaccount = 41772094;


select * from feedbalance;

select nk_feedholdingaccount, count(*) from feedholdingaccount a
group by nk_feedholdingaccount
having count(*) > 1;

/*************************************************/


select * from feedholdingaccount
where nk_feedholdingaccount = 
'b3e47c7c-bf18-4381-8d95-808e6c9dd304'

;


select * from feedaccount;



select * from feedaccount a
left outer join business b
on a.fsk_business = b.sk_business
where b.code = 'ESV'

select * from business;

select * from 