# Data Dictionary — Bluestock MF Capstone

## 01_fund_master.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Unique fund identifier |
| fund_house | TEXT | AMC name |
| scheme_name | TEXT | Full fund name |
| category | TEXT | Equity/Debt/Hybrid |
| sub_category | TEXT | Large Cap/Mid Cap etc |
| expense_ratio_pct | REAL | Annual fee percentage |
| risk_category | TEXT | Low/Moderate/High |
| fund_manager | TEXT | Fund manager name |

## 02_nav_history.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Fund identifier |
| date | DATE | Business day |
| nav | REAL | NAV price in Rs. |

## 03_aum_by_fund_house.csv
| Column | Type | Description |
|--------|------|-------------|
| fund_house | TEXT | AMC name |
| date | DATE | Quarter date |
| aum_crore | REAL | AUM in Rs. crore |
| num_schemes | INT | Number of schemes |

## 07_scheme_performance.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Fund identifier |
| return_1yr_pct | REAL | 1 year return % |
| return_3yr_pct | REAL | 3 year CAGR % |
| sharpe_ratio | REAL | Risk adjusted return |
| alpha | REAL | Return above benchmark |
| beta | REAL | Market sensitivity |
| max_drawdown_pct | REAL | Worst peak to trough fall |

## 08_investor_transactions.csv
| Column | Type | Description |
|--------|------|-------------|
| investor_id | TEXT | Unique investor ID |
| transaction_date | DATE | Date of transaction |
| transaction_type | TEXT | SIP/Lumpsum/Redemption |
| amount_inr | INT | Amount in rupees |
| state | TEXT | Investor state |
| city_tier | TEXT | T30 or B30 city |
| age_group | TEXT | Age bracket |
| kyc_status | TEXT | Verified or Pending |