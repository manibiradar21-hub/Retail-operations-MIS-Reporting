# Excel KPI guide

Convert the CSV data to an Excel Table named `RetailOrders`.

- Total Sales: `=SUM(RetailOrders[Sales_Amount])`
- Total Profit: `=SUM(RetailOrders[Profit])`
- Total Orders: `=COUNTA(RetailOrders[Order_ID])`
- Total Units: `=SUM(RetailOrders[Units_Sold])`
- Average Order Value: `=AVERAGE(RetailOrders[Sales_Amount])`
- Returned Orders: `=COUNTIF(RetailOrders[Order_Status],"Returned")`
- Cancelled Orders: `=COUNTIF(RetailOrders[Order_Status],"Cancelled")`

For rate measures, divide returned/cancelled order counts by total orders. State clearly whether the report includes all statuses or only delivered orders when reporting sales and profit.
