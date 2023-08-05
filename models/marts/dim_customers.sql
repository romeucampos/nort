with
    selected as (
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
        from {{ ref('stg_customers') }}
    )
    , transformed as (
            select
                row_number() over (order by CustomerID) as customer_sk
                ,*
            from selected
    )

select *
from transformed
