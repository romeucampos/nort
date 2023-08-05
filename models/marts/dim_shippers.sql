with
    selected as (
        select
            ShipperID				
            , CompanyName				
            , Phone
        from {{ ref('stg_shippers') }}
    )
    , transformed as (
            select
                row_number() over (order by ShipperID) as shippers_sk
                , *
            from selected
    )

select *
from transformed
