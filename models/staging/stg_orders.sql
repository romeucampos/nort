with
    source as (
        select
            OrderID
            ,CustomerID
            ,EmployeeID
            ,ShipVia as ShipperID

            ,cast(OrderDate as timestamp) as OrderDate
            ,RequiredDate
            ,ShippedDate
            ,Freight
            ,ShipName
            ,ShipAddress
            ,ShipCity
            ,ShipRegion
            ,ShipPostalCode
            ,ShipCountry

        from {{ source('nortwind', 'Orders')}}
    )

select * from source