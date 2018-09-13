
--finding the KCTEST2 funding
select * from stage_warehouse.classdb.funddetails where BusinessCode like '%KCTEST2%';

--Using the fund Fund1532575327048 Super Fund
----02af0967-d947-473b-bf26-f8fd4610c69d

--the properties for this fund
select * from stage_warehouse.classdb.holdingaccount
where fundid= '02af0967-d947-473b-bf26-f8fd4610c69d';
/*
3b29fd23-5143-4640-903c-c407ad0a37f5
8a2403c8-b4e8-4446-b7b6-f3eef6bcade2
c910bcbf-8aaf-4402-b0e6-69762fdb31d6
1079f7a2-7420-4b04-a0fc-c38a941d968d
*/


--properties with address
select nk_holdingaccount, code, holdingdescription, b.address
from stage_warehouse.classdb.holdingaccount a
inner join stage_warehouse.classdb.propertyaddress b
on a.addressid = b.nk_propertyaddress
where nk_holdingaccount in(
'3b29fd23-5143-4640-903c-c407ad0a37f5',
'8a2403c8-b4e8-4446-b7b6-f3eef6bcade2',
'c910bcbf-8aaf-4402-b0e6-69762fdb31d6',
'1079f7a2-7420-4b04-a0fc-c38a941d968d');


--all the events of KCTEST2 linked with property list
select a.nk_property, a.propertycode, propertydescription, a.address, b.businesscode, c.*
from pims.dbo.propertylist a
inner join stage_warehouse.classdb.funddetails b
on a.fnk_fund = b.nk_funddetails
inner join stage_warehouse.classdb.eventDetails c
on a.nk_property = c.HoldingAccountID
where nk_property in(
'3b29fd23-5143-4640-903c-c407ad0a37f5',
'8a2403c8-b4e8-4446-b7b6-f3eef6bcade2',
'c910bcbf-8aaf-4402-b0e6-69762fdb31d6',
'1079f7a2-7420-4b04-a0fc-c38a941d968d');



--all the events of KCTEST2 linked with property list
--pims test 1
select a.nk_property, a.propertycode, propertydescription, a.address, b.businesscode, c.*
from pims.dbo.propertylist a
inner join stage_warehouse.classdb.funddetails b
on a.fnk_fund = b.nk_funddetails
inner join stage_warehouse.classdb.eventDetails c
on a.nk_property = c.HoldingAccountID
where nk_property in(
'c910bcbf-8aaf-4402-b0e6-69762fdb31d6');




select * into pims.dbo.alerts2 from pims.dbo.alerts;


select * from pims.dbo.alerts;

truncate table pims.dbo.alerts;
truncate table pims.dbo.notifications;

INSERT INTO pims.dbo.alerts  ([nk_alert],[fsk_property],[fnk_property],[batch_id] ,[user_id] ,[type],[amount],[amounttolerance] ,[startdate] ,[frequency] ,[datetolerance],[d_start],[d_end],[d_current])VALUES ('c910bcbf-8aaf-4402-b0e6-69762fdb31d6~Rent',NULL,'c910bcbf-8aaf-4402-b0e6-69762fdb31d6','1','carol','Rent',2100,10,'2018-07-04','W',2,current_timestamp,current_timestamp,1);	
INSERT INTO pims.dbo.alerts  ([nk_alert],[fsk_property],[fnk_property],[batch_id] ,[user_id] ,[type],[amount],[amounttolerance] ,[startdate] ,[frequency] ,[datetolerance],[d_start],[d_end],[d_current])VALUES ('c910bcbf-8aaf-4402-b0e6-69762fdb31d6~Rent',NULL,'c910bcbf-8aaf-4402-b0e6-69762fdb31d6','1','carol','Rent',2100,10,'2018-07-03','F',2,current_timestamp,current_timestamp,1);	
INSERT INTO [dbo].[alerts]  ([nk_alert],[fsk_property],[fnk_property],[batch_id] ,[user_id] ,[type],[amount],[amounttolerance] ,[startdate] ,[frequency] ,[datetolerance],[d_start],[d_end],[d_current])VALUES ('c910bcbf-8aaf-4402-b0e6-69762fdb31d6~Rent',NULL,'c910bcbf-8aaf-4402-b0e6-69762fdb31d6','1','carol','Rent',2100,5,'2018-05-03','Q',2,current_timestamp,current_timestamp,1);	
INSERT INTO [dbo].[alerts]  ([nk_alert],[fsk_property],[fnk_property],[batch_id] ,[user_id] ,[type],[amount],[amounttolerance] ,[startdate] ,[frequency] ,[datetolerance],[d_start],[d_end],[d_current])VALUES ('c910bcbf-8aaf-4402-b0e6-69762fdb31d6~Rent',NULL,'c910bcbf-8aaf-4402-b0e6-69762fdb31d6','1','carol','Rent',2100,8,'2018-07-02','M',2,current_timestamp,current_timestamp,1);	


select * from pims.dbo.notifications where valuepaid = 1250;


select * from landing.classdb.holdingaccount

-----events
select * from stage_warehouse.classdb.rentaleventdetails
where nk_event = 'b43728aa-d725-4972-9405-c9a4d40385bd';

select * from stage_warehouse.classdb.expenseeventdetails
where nk_event ='882d1ff1-e3b6-4a9d-9d0a-1d4850a69202'

update stage_warehouse.classdb.expenseeventdetails set expensedate = '2018-08-01'
where nk_event ='882d1ff1-e3b6-4a9d-9d0a-1d4850a69202'


select * from pims.dbo.notifications;


select * from  stage_warehouse.classdb.eventDetails
where eventtype = 'Rent' and  eventstatus = ''

select * from stage_warehouse.classdb.event where nk_event = 
'c9774338-8038-467a-85be-f834dabc484a' and d_current  = 1;

select * from stage_warehouse.classdb.fundDetails where nk_funddetails = '6a13a08f-7852-418d-84e7-dfce0c0b2a42'