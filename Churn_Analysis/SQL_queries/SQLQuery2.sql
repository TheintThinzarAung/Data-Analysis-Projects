select Gender, count(Gender) as TotalCount,
Round(Count(Gender)*100.0 /(Select count(*) from stg_Churn),2) as Percentage
From stg_Churn
Group By Gender;

Select Contract, Count(Contract) as TotalCount,
round(count(contract)*100.0/ (select count(*) from stg_Churn),2) as Percentage
From stg_Churn
Group By Contract;

Select Customer_Status, Count(Customer_Status) as TotalCount,Sum(Total_revenue) as TotalRev,
round(sum(Total_Revenue)/ (select sum(Total_Revenue) from stg_Churn)*100.0,2) as RevPercentage
From stg_Churn
Group By Customer_Status

Select State, Count(State) as TotalCount,
(count(state) * 100.0 / (select count(state) from stg_Churn)) as Percentage from stg_churn
group by State
order by Percentage desc

Select distinct(Internet_Type)
from stg_Churn

select * from stg_Churn
where Internet_Type is null

