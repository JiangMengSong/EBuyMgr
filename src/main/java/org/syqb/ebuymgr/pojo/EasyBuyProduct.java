package org.syqb.ebuymgr.pojo;

public class EasyBuyProduct {
    private Integer productid;

    private String productname;

    private String productdescription;

    private Float productprice;

    private Integer productstock;

    private String productfilename;

    private Integer isdelete;

    private EasyBuyProductCategory category;

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription;
    }

    public Float getProductprice() {
        return productprice;
    }

    public void setProductprice(Float productprice) {
        this.productprice = productprice;
    }

    public Integer getProductstock() {
        return productstock;
    }

    public void setProductstock(Integer productstock) {
        this.productstock = productstock;
    }

    public String getProductfilename() {
        return productfilename;
    }

    public void setProductfilename(String productfilename) {
        this.productfilename = productfilename;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public EasyBuyProductCategory getCategory() {
        return category;
    }

    public void setCategory(EasyBuyProductCategory category) {
        this.category = category;
    }
}