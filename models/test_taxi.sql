
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
with source_data as (

    select *
    from
        `nyc-yellow-taxis-398112`.NYCYellowTaxis.RawTaxiData    
    where
        VendorID = 1
    limit 10
)

select *
from source_data

