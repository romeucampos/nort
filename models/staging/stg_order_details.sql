with
    source as (
        select
            OrderID
            , ProductID

            , UnitPrice				
            , Quantity				
            , Discount
        from {{ source('nortwind', 'Order Details')}}
    )

select * from source