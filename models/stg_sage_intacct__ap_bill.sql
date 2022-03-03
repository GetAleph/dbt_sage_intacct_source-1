
with base as (

    select * 
    from {{ ref('stg_sage_intacct__ap_bill_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sage_intacct__ap_bill_tmp')),
                staging_columns=get_ap_bill_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
    
    cast(recordno as string) as bill_id,
    _fivetran_deleted,
    _fivetran_synced,
    auwhencreated as au_when_created,
    basecurr as base_curr,
    billtopaytocontactname as bill_to_pay_to_contact_name,
    billtopaytokey as bill_to_pay_to_key,
    currency as currency,
    description as description,
    docnumber as doc_number,
    due_in_days as due_in_days,
    recordid as record_id,
    recordtype as record_type,
    shiptoreturntocontactname as ship_to_return_to_contact_name,
    shiptoreturntokey as ship_to_return_to_key,
    state as state,
    totaldue as total_due,
    totalentered as total_entered,
    totalpaid as total_paid,
    vendorid as vendor_id,
    vendorname as vendor_name,
    whencreated as when_created,
    whendue as when_due,
    whenmodified as when_modified,
    whenpaid as when_paid,
    whenposted as when_posted

    from fields
)

select * from final