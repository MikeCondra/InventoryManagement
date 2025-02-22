# Inventory Management

## Michael Condra with Copilot

## michael.condra@gmail.com

February 21, 2025

GitHub repo for this project:  https://github.com/MikeCondra/InventoryManagement.git

Download this way:

    git clone https://github.com/MikeCondra/InventoryManagement.git

The repo contains the Copilot log and a MySql dump.

In MySQL Wizard, the Server/Data Import command will can the database using your own local credentials.

## Grading Criteria Goals

### Use Copilot to generate basic SQL queries for retrieving and filtering data
Over 20 stored procedures were created by Copilot: See screenshot:  DB Notebook (My Connection) - EFCoreModelApp3 - Visual Studio Code	

### Use Copilot to generate complex SQL queries, including joins, nested queries and aggregations

    Use of these query-optimizing techniques can be found here.
    Join: Pages 7-12
    Temporary tables (page 15)
    Nested Queries (page 15)
    Aggregations (pages 26-29)

### Debug errors with Copilot Assistance

My bug fix. Some Copilot-provided queries had errors. I fixed one in MySQL Workbench, where Copilot recommended Dec as a variable name, but Dec is a MySQL reserved word. I changed that to Dece (meaning December). (Page 28).

Copilot’s bug fix. Copilot made a stored procedure to populate the Delivery table with random data for delivery stores, quantities, dates, and request dates. The procedure had a bug that left the request-date column null. Copilot fixed it.  (Page 23).

### Optimize Query performance using Copilot suggestions

Starting with a complex query that reported changes to product levels due to delivery and sale events, Copilot optimized it from 23 to 5 msec using these techniques: removing cursors, adding indices, adding joins.

    Call RunningPerStoreInventoryChanges(); -- 23 msec (page 19); Unoptimized.
    Call RunningPerStoreInventoryChanges(); 23 msec (page 20) (Indices added)
    Call RunningPerStoreInventoryChanges_NoCursors(); – 7 msec (page 23) (Cursors removed)
    Call RunningPerStoreInventoryChanges_NoCursors_WithJoin(); -- 5 msec (page 24) (Joins)

The prompt to create the complex query:

    Please make a Stored Procedure “RunningPerStoreInventoryChanges” that looks at tables Delivery and Sale, and reports the inventory in each store as it changes over time. So, the first (sorted) column in the output should be date, the second column whether a sale or delivery occurred, then what store was affected, then what productid was affected, then the quantity change, then the current inventory for that productid/storied.

# Include a brief summary of how Copilot assisted

This 29-page log contains of most of the interaction with Copilot. In brief, Copilot created a basic set of tables from a short prompt, then populated data tables with random data, then created a long list of stored procedures.  Then, I asked Copilot to create more tables, Sale and Delivery, to model changes to inventory over time. Copilot built those, filled them with a couple hundred rows. Then, I asked for a (hopefully) complex query to report inventory changes over time. That query took 23 msec. Then, Copilot successfully optimized it, using the recommended strategies, and reduced the time to 5 msec. It’s in the log.
