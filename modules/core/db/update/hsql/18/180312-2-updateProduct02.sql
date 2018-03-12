alter table SALES_PRODUCT alter column ORDER_ID rename to ORDER_ID__UNUSED ;
drop index IDX_SALES_PRODUCT_ORDER ;
alter table SALES_PRODUCT drop constraint FK_SALES_PRODUCT_ORDER ;
