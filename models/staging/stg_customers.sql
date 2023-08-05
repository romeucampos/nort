with
    source as (
        select
            CustomerID
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
        from {{ source('nortwind', 'Customers')}}
    )

select * 
from source