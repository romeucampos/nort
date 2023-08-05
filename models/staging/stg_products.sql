with
    source as (
        select
            ProductID
            ,SupplierID
            ,CategoryID

            ,UnitPrice

            ,ProductName
            ,QuantityPerUnit
            ,UnitsInStock
            ,UnitsOnOrder

            ,ReorderLevel
            ,
                case 
                    when Discontinued = '1' then True
                    else False
                end as is_discontinued

        from {{ source('nortwind', 'Products')}}
    )

select * from source