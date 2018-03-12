-- alter table SALES_ORDER add column MARKET_ID varchar(36) ^
-- update SALES_ORDER set MARKET_ID = <default_value> ;
-- alter table SALES_ORDER alter column MARKET_ID set not null ;
alter table SALES_ORDER add column MARKET_ID varchar(36) not null ;
