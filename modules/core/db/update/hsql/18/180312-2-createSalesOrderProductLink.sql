alter table SALES_ORDER_PRODUCT_LINK add constraint FK_ORDPRO_ORDER foreign key (ORDER_ID) references SALES_ORDER(ID);
alter table SALES_ORDER_PRODUCT_LINK add constraint FK_ORDPRO_PRODUCT foreign key (PRODUCT_ID) references SALES_PRODUCT(ID);
