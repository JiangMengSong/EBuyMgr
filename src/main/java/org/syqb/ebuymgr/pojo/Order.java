package org.syqb.ebuymgr.pojo;

import java.util.Date;

public class Order {
    private Integer orderid;

    private User user;

    private Date ordercreatetime;

    private Double ordercost;

    private String orderserialnumber;

    private UserAddress address;

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getOrdercreatetime() {
        return ordercreatetime;
    }

    public void setOrdercreatetime(Date ordercreatetime) {
        this.ordercreatetime = ordercreatetime;
    }

    public Double getOrdercost() {
        return ordercost;
    }

    public void setOrdercost(Double ordercost) {
        this.ordercost = ordercost;
    }

    public String getOrderserialnumber() {
        return orderserialnumber;
    }

    public void setOrderserialnumber(String orderserialnumber) {
        this.orderserialnumber = orderserialnumber;
    }

    public UserAddress getAddress() {
        return address;
    }

    public void setAddress(UserAddress address) {
        this.address = address;
    }
}