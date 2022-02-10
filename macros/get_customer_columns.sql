{% macro get_customer_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "accountkey", "datatype": dbt_utils.type_int()},
    {"name": "araccount", "datatype": dbt_utils.type_int()},
    {"name": "araccounttitle", "datatype": dbt_utils.type_string()},
    {"name": "arinvoiceprinttemplateid", "datatype": dbt_utils.type_string()},
    {"name": "billto_companyname", "datatype": dbt_utils.type_string()},
    {"name": "billto_contactname", "datatype": dbt_utils.type_string()},
    {"name": "billto_email_1", "datatype": dbt_utils.type_string()},
    {"name": "billto_email_2", "datatype": dbt_utils.type_string()},
    {"name": "billto_firstname", "datatype": dbt_utils.type_string()},
    {"name": "billto_lastname", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "billto_mailaddress_zip", "datatype": dbt_utils.type_int()},
    {"name": "billto_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "billto_printas", "datatype": dbt_utils.type_string()},
    {"name": "billto_taxable", "datatype": "boolean"},
    {"name": "billto_url_1", "datatype": dbt_utils.type_string()},
    {"name": "billto_visible", "datatype": "boolean"},
    {"name": "billtokey", "datatype": dbt_utils.type_int()},
    {"name": "cf_legacy_id", "datatype": dbt_utils.type_string()},
    {"name": "cf_license_no", "datatype": dbt_utils.type_string()},
    {"name": "comments", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_companyname", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_contactname", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_email_1", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_email_2", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_firstname", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_lastname", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_zip", "datatype": dbt_utils.type_int()},
    {"name": "contactinfo_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_printas", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_url_1", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_visible", "datatype": "boolean"},
    {"name": "contactkey", "datatype": dbt_utils.type_int()},
    {"name": "createdby", "datatype": dbt_utils.type_int()},
    {"name": "customerid", "datatype": dbt_utils.type_string()},
    {"name": "custtype", "datatype": dbt_utils.type_string()},
    {"name": "custtypekey", "datatype": dbt_utils.type_int()},
    {"name": "delivery_options", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_cellphone", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_companyname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_contactname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_email_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_email_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_fax", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_firstname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_initial", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_lastname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_phone_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_prefix", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_printas", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_status", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_taxable", "datatype": "boolean"},
    {"name": "displaycontact_taxid", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_url_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_visible", "datatype": "boolean"},
    {"name": "displaycontactkey", "datatype": dbt_utils.type_int()},
    {"name": "emailoptin", "datatype": "boolean"},
    {"name": "enableonlineachpayment", "datatype": "boolean"},
    {"name": "enableonlinecardpayment", "datatype": "boolean"},
    {"name": "entity", "datatype": dbt_utils.type_string()},
    {"name": "glgroup", "datatype": dbt_utils.type_string()},
    {"name": "glgrpkey", "datatype": dbt_utils.type_int()},
    {"name": "last_invoicedate", "datatype": "date"},
    {"name": "last_statementdate", "datatype": "date"},
    {"name": "megaentityid", "datatype": dbt_utils.type_string()},
    {"name": "megaentitykey", "datatype": dbt_utils.type_int()},
    {"name": "megaentityname", "datatype": dbt_utils.type_string()},
    {"name": "modifiedby", "datatype": dbt_utils.type_int()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "objectrestriction", "datatype": dbt_utils.type_string()},
    {"name": "oeinvoiceprinttemplateid", "datatype": dbt_utils.type_string()},
    {"name": "offsetglaccountno", "datatype": dbt_utils.type_int()},
    {"name": "offsetglaccountnotitle", "datatype": dbt_utils.type_string()},
    {"name": "onetime", "datatype": "boolean"},
    {"name": "onhold", "datatype": "boolean"},
    {"name": "parentid", "datatype": dbt_utils.type_string()},
    {"name": "parentkey", "datatype": dbt_utils.type_int()},
    {"name": "parentname", "datatype": dbt_utils.type_string()},
    {"name": "prclst_override", "datatype": dbt_utils.type_string()},
    {"name": "recordno", "datatype": dbt_utils.type_int()},
    {"name": "resaleno", "datatype": dbt_utils.type_string()},
    {"name": "shipto_companyname", "datatype": dbt_utils.type_string()},
    {"name": "shipto_contactname", "datatype": dbt_utils.type_string()},
    {"name": "shipto_email_1", "datatype": dbt_utils.type_string()},
    {"name": "shipto_email_2", "datatype": dbt_utils.type_string()},
    {"name": "shipto_firstname", "datatype": dbt_utils.type_string()},
    {"name": "shipto_lastname", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "shipto_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "shipto_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "shipto_printas", "datatype": dbt_utils.type_string()},
    {"name": "shipto_taxable", "datatype": "boolean"},
    {"name": "shipto_url_1", "datatype": dbt_utils.type_string()},
    {"name": "shipto_visible", "datatype": "boolean"},
    {"name": "shiptokey", "datatype": dbt_utils.type_int()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "supdocid", "datatype": dbt_utils.type_string()},
    {"name": "taxid", "datatype": dbt_utils.type_string()},
    {"name": "termname", "datatype": dbt_utils.type_string()},
    {"name": "termskey", "datatype": dbt_utils.type_int()},
    {"name": "termvalue", "datatype": dbt_utils.type_string()},
    {"name": "totaldue", "datatype": dbt_utils.type_float()},
    {"name": "whencreated", "datatype": dbt_utils.type_timestamp()},
    {"name": "whenmodified", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}