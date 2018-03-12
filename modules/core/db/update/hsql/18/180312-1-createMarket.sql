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
);
