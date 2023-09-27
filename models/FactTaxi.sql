select 
    {{ dbt_utils.generate_surrogate_key(
        [
        'VendorID',
        'tpep_pickup_datetime',
        'tpep_dropoff_datetime'
        ]
    ) }} as taxi_id
    ,*

from
    `nyc-yellow-taxis-398112`.NYCYellowTaxis.RawTaxiData    