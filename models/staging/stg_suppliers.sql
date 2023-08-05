with
    source as (
        select
            SupplierID
            , CompanyName
            , ContactName
            , ContactTitle
            , Address
            , City
            , Region
            , PostalCode
            , Country
            , Phone
            , Fax
            , HomePage
        from {{ source('nortwind', 'Suppliers')}}
    )

select * from source