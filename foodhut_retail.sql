SELECT  SUM(AmountP),Date
FROM foodHut.FoodHut_Analysis_Analysis
GROUP BY  Date;

SELECT  TransactionType, SUM(AmountP)
FROM foodHut.FoodHut_Analysis_Analysis
WHERE TransactionType = 'expenses'
GROUP BY Date;


-- cost_of_sales and operatioal cost

WITH calc AS (SELECT Date,  SUM(IF(category NOT IN
                            ('electricity', 'rent', 'salaries', 'petroleum')AND TransactionType = 'expenses',AmountP,0)) AS cost_of_sales,
                     SUM(IF(category IN ('electricity', 'rent', 'salaries', 'petroleum'), AmountP, 0))                  AS operational_cost,
                     SUM(IF(TransactionType = 'expenses', AmountP,0))                                                   AS expenses_per_month,
                     SUM(IF(TransactionType = 'sales',AmountP,0))                                                          sales_per_month

FROM foodHut.FoodHut_Analysis_Analysis
GROUP BY Date),
margin AS (SELECT Date,sales_per_month,  (sales_per_month - cost_of_sales)                    AS Gross_profit,
                       (sales_per_month- cost_of_sales - operational_cost) AS Net_profit
              FROM calc
               )

SELECT margin.Date, ROUND((margin.Gross_profit/calc.sales_per_month)*100,2)AS Gross_margin, ROUND((margin.Net_profit/calc.sales_per_month)*100,2)AS Net_margin
FROM margin
INNER JOIN calc ON calc.Date = margin.Date
GROUP BY margin.Date;




















