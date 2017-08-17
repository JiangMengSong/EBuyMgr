package org.syqb.ebuymgr.pojo;

public class OrderDetail {
    private Integer orderdetailid;

    private Order order;

    private Product product;

    private Integer orderquantity;

    private Float ordercost;

    public Integer getOrderdetailid() {
        return orderdetailid;
    }

    public void setOrderdetailid(Integer orderdetailid) {
        this.orderdetailid = orderdetailid;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
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