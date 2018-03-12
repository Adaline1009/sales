create table SALES_MARKET_PRODUCT_LINK (
    MARKET_ID varchar(36) not null,
    PRODUCT_ID varchar(36) not null,
    primary key (MARKET_ID, PRODUCT_ID)
);
