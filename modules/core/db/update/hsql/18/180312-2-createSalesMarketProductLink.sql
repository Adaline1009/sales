alter table SALES_MARKET_PRODUCT_LINK add constraint FK_MARPRO_MARKET foreign key (MARKET_ID) references SALES_MARKET(ID);
alter table SALES_MARKET_PRODUCT_LINK add constraint FK_MARPRO_PRODUCT foreign key (PRODUCT_ID) references SALES_PRODUCT(ID);
