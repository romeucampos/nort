with
    selected as (
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
        from {{ ref('stg_employees') }}
    )
    , transformed as (
            select
                row_number() over (order by EmployeeID) as employee_sk
                ,*
            from selected
    )

select *
from transformed
