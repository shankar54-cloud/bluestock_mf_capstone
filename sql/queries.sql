-- Query 1: Top 5 funds by AUM
SELECT fund_house, MAX(aum_crore) as max_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY max_aum DESC
LIMIT 5;

-- Query 2: Average NAV per month
SELECT amfi_code,
       strftime('%Y-%m', date) as month,
       ROUND(AVG(nav), 2) as avg_nav
FROM fact_nav
GROUP BY amfi_code, month
LIMIT 20;

-- Query 3: Transaction count by type
SELECT transaction_type,
       COUNT(*) as count,
       SUM(amount_inr) as total_amount
FROM fact_transactions
GROUP BY transaction_type;

-- Query 4: Transactions by state
SELECT state,
       COUNT(*) as transactions,
       SUM(amount_inr) as total_invested
FROM fact_transactions
GROUP BY state
ORDER BY total_invested DESC;

-- Query 5: Funds with expense ratio less than 1%
SELECT scheme_name, fund_house, expense_ratio_pct
FROM dim_fund
WHERE expense_ratio_pct < 1.0
ORDER BY expense_ratio_pct ASC;

-- Query 6: Top 5 funds by Sharpe ratio
SELECT amfi_code, sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC
LIMIT 5;

-- Query 7: Funds with positive Alpha
SELECT amfi_code, alpha, return_3yr_pct
FROM fact_performance
WHERE alpha > 0
ORDER BY alpha DESC;

-- Query 8: Average SIP amount by age group
SELECT age_group,
       COUNT(*) as count,
       ROUND(AVG(amount_inr), 0) as avg_amount
FROM fact_transactions
GROUP BY age_group;

-- Query 9: T30 vs B30 split
SELECT city_tier,
       COUNT(*) as transactions,
       SUM(amount_inr) as total_amount
FROM fact_transactions
GROUP BY city_tier;

-- Query 10: Funds count by risk category
SELECT risk_category,
       COUNT(*) as num_funds
FROM dim_fund
GROUP BY risk_category;