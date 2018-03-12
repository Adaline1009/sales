alter table SALES_PRODUCT add constraint FK_SALES_PRODUCT_ORDER foreign key (ORDER_ID) references SALES_ORDER(ID);
create index IDX_SALES_PRODUCT_ORDER on SALES_PRODUCT (ORDER_ID);
