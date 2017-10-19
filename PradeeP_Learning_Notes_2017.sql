-- Pradeep's Vitals Database Learning Tips

/* 
* To find Brand for each communication codes
* Result: context_code have the Brand
*/
SELECT 
	name
	, com.code
	, parent_context_id
	, c.code as context_code 
FROM communication com
INNER JOIN context c on com.parent_context_id = c.context_id 

/*
* To find the vendor external id of a HCP
* E.g., TakedaID 
*/
SELECT 
	c.master_contact_id
	, vcm.vendor_contact_key as TakedaID
FROM vendor_contact_mapping vcm
INNER JOIN contact_mapping_type cmt on vcm.contact_mapping_type_id = cmt.contact_mapping_type_id and cmt.code = 'TAKEDA.PROFESSIONAL_ID'
INNER JOIN contact c on vcm.c_master_contact_id = c.master_contact_id 