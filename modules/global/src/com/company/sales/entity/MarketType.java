package com.company.sales.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum MarketType implements EnumClass<Integer> {

    Super(10),
    Mini(20);

    private Integer id;

    MarketType(Integer value) {
        this.id = value;
    }

    public Integer getId() {
        return id;
    }

    @Nullable
    public static MarketType fromId(Integer id) {
        for (MarketType at : MarketType.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}