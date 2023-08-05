with
    source as (
        select
            ShipperID				
            , CompanyName				
            , Phone
        from {{ source('nortwind', 'Shippers')}}
    )

select * from source