with
    source as (
        select
            EmployeeID

            , LastName
            , FirstName
            , Title
            , TitleOfCourtesy
            , BirthDate
            , HireDate
            , Address
            , City
            , Region
            , PostalCode
            , Country
            , HomePhone
            , Extension
            , Photo
            , Notes
            , ReportsTo
            , PhotoPath

        from {{ source('nortwind', 'Employees')}}
    )

select * from source