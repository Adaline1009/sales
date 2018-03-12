create table SALES_ORDER_PRODUCT_LINK (
    ORDER_ID varchar(36) not null,
    PRODUCT_ID varchar(36) not null,
    primary key (ORDER_ID, PRODUCT_ID)
);
