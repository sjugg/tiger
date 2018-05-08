package com.tiger.pojo;

public class Quoedprice {
    private Integer quotedpriceId;

    private String quotedpriceAddress;

    private Integer quotedpriceHouseacreage;

    private String quotedpriceUsername;

    private String quotedpriceTel;

    private String quotedpriceBedroom;

    private String quotedpriceParlour;

    private String quotedpriceKitchen;

    private String quotedpriceToilet;

    public Integer getQuotedpriceId() {
        return quotedpriceId;
    }

    public void setQuotedpriceId(Integer quotedpriceId) {
        this.quotedpriceId = quotedpriceId;
    }

    public String getQuotedpriceAddress() {
        return quotedpriceAddress;
    }

    public void setQuotedpriceAddress(String quotedpriceAddress) {
        this.quotedpriceAddress = quotedpriceAddress == null ? null : quotedpriceAddress.trim();
    }

    public Integer getQuotedpriceHouseacreage() {
        return quotedpriceHouseacreage;
    }

    public void setQuotedpriceHouseacreage(Integer quotedpriceHouseacreage) {
        this.quotedpriceHouseacreage = quotedpriceHouseacreage;
    }

    public String getQuotedpriceUsername() {
        return quotedpriceUsername;
    }

    public void setQuotedpriceUsername(String quotedpriceUsername) {
        this.quotedpriceUsername = quotedpriceUsername == null ? null : quotedpriceUsername.trim();
    }

    public String getQuotedpriceTel() {
        return quotedpriceTel;
    }

    public void setQuotedpriceTel(String quotedpriceTel) {
        this.quotedpriceTel = quotedpriceTel == null ? null : quotedpriceTel.trim();
    }

    public String getQuotedpriceBedroom() {
        return quotedpriceBedroom;
    }

    public void setQuotedpriceBedroom(String quotedpriceBedroom) {
        this.quotedpriceBedroom = quotedpriceBedroom == null ? null : quotedpriceBedroom.trim();
    }

    public String getQuotedpriceParlour() {
        return quotedpriceParlour;
    }

    public void setQuotedpriceParlour(String quotedpriceParlour) {
        this.quotedpriceParlour = quotedpriceParlour == null ? null : quotedpriceParlour.trim();
    }

    public String getQuotedpriceKitchen() {
        return quotedpriceKitchen;
    }

    public void setQuotedpriceKitchen(String quotedpriceKitchen) {
        this.quotedpriceKitchen = quotedpriceKitchen == null ? null : quotedpriceKitchen.trim();
    }

    public String getQuotedpriceToilet() {
        return quotedpriceToilet;
    }

    public void setQuotedpriceToilet(String quotedpriceToilet) {
        this.quotedpriceToilet = quotedpriceToilet == null ? null : quotedpriceToilet.trim();
    }
}