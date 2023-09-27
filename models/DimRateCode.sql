with RateCodesUnique as (
    select distinct
        RateCodeID
    from
        `nyc-yellow-taxis-398112`.NYCYellowTaxis.RawTaxiData
)

select 
    RateCodeID
    ,case when RateCodeID = 1 then 'Standard Rate'
            when RateCodeID = 2 then 'JFK'
            when RateCodeID = 3 then 'Newark'
            when RateCodeID = 4 then 'Nassu or Westchester'
            when RateCodeID = 5 then 'Negotiated fare'
            when RateCodeID = 6 then 'Group ride'
            when RateCodeID = 99 then 'Unspecified'
            else null
        end as Rate
from
    RateCodesUnique
where
    RateCodeID is not null
