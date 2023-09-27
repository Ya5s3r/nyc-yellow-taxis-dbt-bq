with PaymentTypesUnique as (
    select distinct
        payment_type
    from
        `nyc-yellow-taxis-398112`.NYCYellowTaxis.RawTaxiData
)

select 
    payment_type as PaymentTypeID
    ,case when payment_type = 1 then 'Credit card'
            when payment_type = 2 then 'Cash'
            when payment_type = 3 then 'No charge'
            when payment_type = 4 then 'Dispute'
            when payment_type = 5 then 'Unknown'
            when payment_type = 6 then 'Voided trip'
            when payment_type = 0 then 'Voided trip'
            else null
        end as PaymentType
from
    PaymentTypesUnique
