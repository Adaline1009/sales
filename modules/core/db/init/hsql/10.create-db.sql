-- begin SALES_PRODUCT
create table SALES_PRODUCT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    PRICE double precision not null,
    --
    primary key (ID)
)^
-- end SALES_PRODUCT
-- begin SALES_MARKET
create table SALES_MARKET (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ADDRESS_COUNTRY varchar(100),
    ADDRESS_CITY varchar(100),
    ADDRESS_STREET varchar(100),
    ADDRESS_HOUSE_NUMBER varchar(100) not null,
    --
    MARKET_TYPE integer not null,
    --
    primary key (ID)
)^
-- end SALES_MARKET
-- begin SALES_CUSTOMER
create table SALES_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(100),
    EMAIL varchar(50) not null,
    --
    primary key (ID)
)^
-- end SALES_CUSTOMER
-- begin SALES_ORDER
create table SALES_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CUSTOMER_ID varchar(36),
    MARKET_ID varchar(36) not null,
    DATE_ date not null,
    AMOUNT decimal(19, 2),
    --
    primary key (ID)
)^
-- end SALES_ORDER
-- begin SALES_MARKET_PRODUCT_LINK
create table SALES_MARKET_PRODUCT_LINK (
    MARKET_ID varchar(36) not null,
    PRODUCT_ID varchar(36) not null,
    primary key (MARKET_ID, PRODUCT_ID)
)^
-- end SALES_MARKET_PRODUCT_LINK
-- begin SALES_ORDER_PRODUCT_LINK
create table SALES_ORDER_PRODUCT_LINK (
    ORDER_ID varchar(36) not null,
    PRODUCT_ID varchar(36) not null,
    primary key (ORDER_ID, PRODUCT_ID)
)^
-- end SALES_ORDER_PRODUCT_LINK
