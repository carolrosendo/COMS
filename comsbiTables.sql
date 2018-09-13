select nk_customer, count(*) from customer
where d_current = 1
group by nk_customer having count(*) > 1;

select nk_opportunity, count(*) from opportunity
where d_current = 1
group by nk_opportunity having count(*) > 1;

select nk_implementationconsultant, count(*) from implementationconsultant
where d_current = 1
group by nk_implementationconsultant having count(*) > 1;



select nk_business, count(*) from business
where d_current = 1
group by nk_business having count(*) > 1;

select nk_brand, count(*) from brand
where d_current = 1
group by nk_brand having count(*) > 1;

select nk_fundtype, count(*) from fundtype
where d_current = 1
group by nk_fundtype having count(*) > 1;

select nk_fund, count(*) from fund
where d_current = 1
group by nk_fund having count(*) > 1;

select nk_feedprovider, count(*) from feedprovider
where d_current = 1
group by nk_feedprovider having count(*) > 1;

select nk_feedproduct, count(*) from feedproduct
where d_current = 1
group by nk_feedproduct having count(*) > 1;



select nk_feedaccount, count(*) from feedaccount
where d_current = 1
group by nk_feedaccount having count(*) > 1;

select nk_feedholdingaccount, count(*) from feedholdingaccount
where d_current = 1
group by nk_feedholdingaccount having count(*) > 1;


select nk_feedbalance, count(*) from feedbalance
where d_current = 1
group by nk_feedbalance having count(*) > 1;






delete from coms_bi.dbo.fund
where sk_fund in(
select sk_fund from coms_bi.dbo.fund
where nk_fund in(
select nk_fund from coms_bi.dbo.fund
where d_current = 1
group by nk_fund having count(*) > 1)
and d_current = 1 
group by nk_fund)

;


delete from coms_bi.dbo.feedaccount
where sk_feedaccount in(
select sk_feedaccount from coms_bi.dbo.feedaccount
where nk_feedaccount in(
select nk_feedaccount from coms_bi.dbo.feedaccount
where d_current = 1
group by nk_feedaccount having count(*) > 1)
and d_current = 1 );

delete from coms_bi.dbo.feedbalance
where sk_feedbalance in(
select sk_feedbalance from coms_bi.dbo.feedbalance
where nk_feedbalance in(
select nk_feedbalance from coms_bi.dbo.feedbalance
where d_current = 1
group by nk_feedbalance having count(*) > 1)
and d_current = 1);

delete from coms_bi.dbo.feedholdingaccount
where sk_feedholdingaccount in(
select sk_feedholdingaccount from coms_bi.dbo.feedholdingaccount
where nk_feedholdingaccount in(
select nk_feedholdingaccount from coms_bi.dbo.feedholdingaccount
where d_current = 1
group by nk_feedholdingaccount having count(*) > 1)
and d_current = 1);



select * from coms_bi.dbo.feedholdingaccount where d_end < d_start;
select * from coms_bi.dbo.feedbalance where d_end < d_start;
select * from coms_bi.dbo.feedaccount where d_end < d_start;

----14642484

select * from coms_bi.c.fundfeed where sk_feedholdingaccount = 14642484;

select fsk_feedholdingaccount, count(*) from coms_bi.c.feedbalance
group by fsk_feedholdingaccount having count(*) > 1;


select *  
from coms_bi.c.feedbalance
where nk_feedbalance = 
'9099fa54-31d2-445f-9541-94a0d546e74f'