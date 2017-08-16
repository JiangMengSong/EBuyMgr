package org.syqb.ebuymgr.pojo;

public class EasyBuyOrderDetail {
    private Integer orderdetailid;

    private EasyBuyOrder order;

    private EasyBuyProduct product;

    private Integer orderquantity;

    private Float ordercost;

    public Integer getOrderdetailid() {
        return orderdetailid;
    }

    public void setOrderdetailid(Integer orderdetailid) {
        this.orderdetailid = orderdetailid;
    }

    public EasyBuyOrder getOrder() {
        return order;
    }

    public void setOrder(EasyBuyOrder order) {
        this.order = order;
    }

    public EasyBuyProduct getProduct() {
        return product;
    }

    public void setProduct(EasyBuyProduct product) {
        this.product = product;
    }

    public Integer getOrderquantity() {
        return orderquantity;
    }

    public void setOrderquantity(Integer orderquantity) {
        this.orderquantity = orderquantity;
    }

    public Float getOrdercost() {
        return ordercost;
    }

    public void setOrdercost(Float ordercost) {
        this.ordercost = ordercost;
    }
}