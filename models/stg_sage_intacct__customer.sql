
with base as (

    select * 
    from {{ ref('stg_sage_intacct__customer_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sage_intacct__customer_tmp')),
                staging_columns=get_customer_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
    
    customerid,
    _fivetran_deleted,
    _fivetran_synced,
    arinvoiceprinttemplateid,
    billtokey,
    contactkey,
    createdby,
    custtype,
    custtypekey,
    delivery_options,
    displaycontactkey,
    emailoptin,
    enableonlineachpayment,
    enableonlinecardpayment,
    entity,
    glgroup,
    glgrpkey,
    last_invoicedate,
    last_statementdate,
    modifiedby,
    name,
    objectrestriction,
    oeinvoiceprinttemplateid,
    onetime,
    onhold,
    parentid,
    parentkey,
    parentname,
    prclst_override,
    recordno,
    shiptokey,
    status,
    termname,
    termskey,
    termvalue,
    totaldue,
    whencreated,
    whenmodified,
    comments,
    resaleno,
    cf_legacy_id,
    cf_license_no,
    supdocid,
    araccount,
    accountkey,
    araccounttitle,
    shipto_mailaddress_address_1,
    displaycontact_visible,
    contactinfo_companyname,
    contactinfo_phone_,
    displaycontact_status,
    billto_visible,
    billto_companyname,
    shipto_taxable,
    contactinfo_mailaddress_city,
    displaycontact_mailaddress_countrycode,
    contactinfo_mailaddress_countrycode,
    shipto_printas,
    shipto_mailaddress_zip,
    contactinfo_mailaddress_zip,
    billto_email_2,
    billto_email_1,
    contactinfo_mailaddress_country,
    displaycontact_cellphone,
    displaycontact_fax,
    displaycontact_mailaddress_zip,
    billto_mailaddress_city,
    billto_phone_1,
    shipto_contactname,
    displaycontact_printas,
    contactinfo_mailaddress_state,
    billto_taxable,
    displaycontact_taxable,
    billto_mailaddress_state,
    billto_mailaddress_countrycode,
    displaycontact_companyname,
    shipto_mailaddress_countrycode,
    shipto_mailaddress_state,
    billto_mailaddress_zip,
    displaycontact_url_1,
    displaycontact_email_1,
    shipto_mailaddress_city,
    displaycontact_email_2,
    contactinfo_printas,
    shipto_phone_1,
    shipto_companyname,
    displaycontact_mailaddress_state,
    contactinfo_email_1,
    contactinfo_email_2,
    displaycontact_mailaddress_country,
    displaycontact_mailaddress_city,
    contactinfo_contactname,
    displaycontact_contactname,
    shipto_mailaddress_country,
    shipto_email_1,
    shipto_email_2,
    billto_printas,
    displaycontact_mailaddress_address_1,
    billto_mailaddress_country,
    displaycontact_mailaddress_address_,
    contactinfo_visible,
    contactinfo_mailaddress_address_1,
    shipto_visible,
    billto_contactname,
    displaycontact_phone_1,
    billto_mailaddress_address_1,
    displaycontact_lastname,
    displaycontact_firstname,
    displaycontact_initial,
    shipto_mailaddress_address_2,
    displaycontact_prefix,
    offsetglaccountnotitle,
    offsetglaccountno,
    displaycontact_taxid,
    billto_url_1,
    shipto_lastname,
    shipto_firstname,
    contactinfo_url_1,
    billto_lastname,
    taxid,
    contactinfo_lastname,
    shipto_url_1,
    billto_firstname,
    contactinfo_firstname,
    displaycontact_phone_2,
    megaentityname,
    megaentitykey,
    megaentityi

    from fields
)

select * from final