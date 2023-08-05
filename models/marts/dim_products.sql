with
    selected as (
        select
            ProductID
            , SupplierID
            , CategoryID

            , UnitPrice

            , ProductName
            , QuantityPerUnit
            , UnitsInStock
            , UnitsOnOrder

            , ReorderLevel
            , is_discontinued


        from {{ ref('stg_products') }}
    )
    , transformed as (
            select
                row_number() over (order by ProductID) as product_sk
                , *
            from selected
    )

select *
from transformed
