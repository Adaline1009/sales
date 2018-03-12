alter table SALES_ORDER add constraint FK_SALES_ORDER_MARKET foreign key (MARKET_ID) references SALES_MARKET(ID);
create index IDX_SALES_ORDER_MARKET on SALES_ORDER (MARKET_ID);
