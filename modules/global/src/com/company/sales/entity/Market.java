package com.company.sales.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.annotation.EmbeddedParameters;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;

@Table(name = "SALES_MARKET")
@Entity(name = "sales$Market")
public class Market extends StandardEntity {
    private static final long serialVersionUID = -2119563779938972988L;

    @Embedded
    @EmbeddedParameters(nullAllowed = false)
    @AttributeOverrides({
        @AttributeOverride(name = "country", column = @Column(name = "ADDRESS_COUNTRY")),
        @AttributeOverride(name = "city", column = @Column(name = "ADDRESS_CITY")),
        @AttributeOverride(name = "street", column = @Column(name = "ADDRESS_STREET")),
        @AttributeOverride(name = "houseNumber", column = @Column(name = "ADDRESS_HOUSE_NUMBER"))
    })
    protected Address address;

    @JoinTable(name = "SALES_MARKET_PRODUCT_LINK",
        joinColumns = @JoinColumn(name = "MARKET_ID"),
        inverseJoinColumns = @JoinColumn(name = "PRODUCT_ID"))
    @OnDelete(DeletePolicy.CASCADE)
    @ManyToMany
    protected List<Product> products;

    @NotNull
    @Column(name = "MARKET_TYPE", nullable = false)
    protected Integer marketType;

    public void setAddress(Address address) {
        this.address = address;
    }

    public Address getAddress() {
        return address;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setMarketType(MarketType marketType) {
        this.marketType = marketType == null ? null : marketType.getId();
    }

    public MarketType getMarketType() {
        return marketType == null ? null : MarketType.fromId(marketType);
    }


}