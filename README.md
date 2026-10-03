# Retail Operations & MIS Reporting Automation

**Tools:** Excel, Power Query, Power BI (optional), SQL (optional)

## Objective
Create a repeatable MIS report for retail order, sales, profit, regional and channel performance using a synthetic practice dataset.

## Files
- `data/retail_orders.csv` — 500 synthetic order records.
- `excel_kpi_guide.md` — suggested KPIs and Excel formulas.
- `sql/retail_mis_queries.sql` — example SQL analysis queries.

## Suggested workflow
1. Import the CSV into Excel as a table named `RetailOrders`.
2. Check blanks, duplicate Order_ID values, invalid quantities and unusual prices.
3. Use Power Query to set data types and create a clean reporting table.
4. Build KPI cards for Total Sales, Total Profit, Total Orders, Units Sold, Return Rate and Cancellation Rate.
5. Add monthly trend, region performance, sales channel and product/category visuals.
6. Add slicers for Order_Date, Region, Sales_Channel, Category and Order_Status.
7. Validate dashboard totals against Excel pivot tables or SQL results.

## Important
This is a practice project using synthetic data. Complete the analysis and build the dashboard before describing it as a completed project on your resume.
