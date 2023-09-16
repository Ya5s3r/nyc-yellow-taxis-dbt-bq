with location_data as (

    select *
    from
        `nyc-yellow-taxis-398112`.NYCYellowTaxis.RawLocationLookup   
)

select *
from
    location_data