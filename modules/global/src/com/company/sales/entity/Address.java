package com.company.sales.entity;

import javax.persistence.Embeddable;
import com.haulmont.chile.core.annotations.MetaClass;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

@MetaClass(name = "sales$Address")
@Embeddable
public class Address extends EmbeddableEntity {
    private static final long serialVersionUID = -5414880242728938909L;

    @Column(name = "COUNTRY", length = 100)
    protected String country;

    @Column(name = "CITY", length = 100)
    protected String city;

    @Column(name = "STREET", length = 100)
    protected String street;

    @NotNull
    @Column(name = "HOUSE_NUMBER", nullable = false, length = 100)
    protected String houseNumber;

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
    }

    public String getHouseNumber() {
        return houseNumber;
    }


}