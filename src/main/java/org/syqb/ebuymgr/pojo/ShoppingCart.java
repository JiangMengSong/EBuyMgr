package org.syqb.ebuymgr.pojo;

public class ShoppingCart {
    private Integer shoppingcartid;

    private User user;

    private org.syqb.ebuymgr.pojo.Product product;

    private Integer productnum;

    public Integer getShoppingcartid() {
        return shoppingcartid;
    }

    public void setShoppingcartid(Integer shoppingcartid) {
        this.shoppingcartid = shoppingcartid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public org.syqb.ebuymgr.pojo.Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getProductnum() {
        return productnum;
    }

    public void setProductnum(Integer productnum) {
        this.productnum = productnum;
    }
}