---check feed account x product

select a.feedid, a.ProductId, a.ProductName, a.ProviderId, a.ProviderName 
from landing.classdb.feedaccount a
where feedid = '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


select a.nk_feedaccount, a.ProductId, a.ProductName, a.ProviderId, a.ProviderName, a.d_current
from stage_warehouse.classdb.feedaccount a
where feedid = '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


select a.nk_feedaccount, a.fsk_feedproduct, b.name, b.d_current, a.fsk_feedprovider, c.name, b.d_current, a.d_current, a.ProviderName
from coms_bi.dbo.feedaccount a
left outer join coms_bi.dbo.feedproduct b
on a.fsk_feedproduct = b.sk_feedproduct
left outer join coms_bi.dbo.feedprovider c
on a.fsk_feedprovider = c.sk_feedprovider
where nk_feedaccount = '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


select a.nk_feedaccount, a.fnk_feedproduct, b.name, a.fnk_feedprovider, c.name 
 from coms_bi.c.feedaccount a left outer join coms_bi.c.feedproduct b
 on a.fsk_feedproduct = b.sk_feedproduct
 left outer join coms_bi.dbo.feedprovider c
on a.fsk_feedprovider = c.sk_feedprovider
where nk_feedaccount = '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';



select a.feedaccount_guid, a.feedaccount_fsk_feedproduct,  b.name, a.feedaccount_fsk_feedprovider, c.name, a.feedaccount_ProviderName 
from coms_bi.c.fundaccount a
left outer join coms_bi.c.feedproduct b
 on a.feedaccount_fsk_feedproduct = b.sk_feedproduct
 left outer join coms_bi.dbo.feedprovider c
on a.feedaccount_fsk_feedprovider = c.sk_feedprovider
where feedaccount_guid = '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


select a.feedaccount_guid, A.feedaccount_fsk_feedproduct, b.name, a.feedaccount_fsk_feedprovider, c.name
from coms_bi.c.fundfeed a
left outer join coms_bi.c.feedproduct b
 on a.feedaccount_fsk_feedproduct = b.sk_feedproduct
 left outer join coms_bi.dbo.feedprovider c
on a.feedaccount_fsk_feedprovider = c.sk_feedprovider
where feedaccount_guid =  '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


select a.feedaccount_guid, A.feedaccount_fsk_feedproduct, A.Product_name, a.feedaccount_fsk_feedprovider, A.Provider_name
from coms_bi.c.fundfeed a
where feedaccount_guid =  '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';


SELECT feedaccount_guid, fa.feedaccount_fsk_feedproduct, fa.feedaccount_fsk_feedprovider, fe.sk_feedproduct, fe.sk_feedprovider, fe.fsk_feedprovider
	from coms_bi.c.feed FE 
	full outer join coms_bi.c.fundaccount FA on FA.feedaccount_fsk_feedproduct = FE.sk_feedproduct
	where fa.feedaccount_guid =  '7058f2cb-0320-4e80-bd4f-a1128ba8d98a';