with
    selected as (
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
        from {{ ref('stg_suppliers') }}
    )
    , transformed as (
            select
                row_number() over (order by SupplierID) as suppliers_sk
                , *
            from selected
    )

select *
from transformed
