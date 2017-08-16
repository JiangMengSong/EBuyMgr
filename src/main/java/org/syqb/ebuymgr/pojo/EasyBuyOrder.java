package org.syqb.ebuymgr.pojo;

import java.util.Date;

public class EasyBuyOrder {
    private Integer orderid;

    private EasyBuyUser user;

    private Date ordercreatetime;

    private Double ordercost;

    private String orderserialnumber;

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public EasyBuyUser getUser() {
        return user;
    }

    public void setUser(EasyBuyUser user) {
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
}