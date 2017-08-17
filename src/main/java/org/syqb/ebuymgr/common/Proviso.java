package org.syqb.ebuymgr.common;

public class Proviso {
    private CommonInteger price;
    private CommonInteger floorage;
    private String title;
    private Integer streetId;
    private Integer typeId;

    public CommonInteger getPrice() {
        return price;
    }

    public void setPrice(CommonInteger price) {
        this.price = price;
    }

    public CommonInteger getFloorage() {
        return floorage;
    }

    public void setFloorage(CommonInteger floorage) {
        this.floorage = floorage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getStreetId() {
        return streetId;
    }

    public void setStreetId(Integer streetId) {
        this.streetId = streetId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}
