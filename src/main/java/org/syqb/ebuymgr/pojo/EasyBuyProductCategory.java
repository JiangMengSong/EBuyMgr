package org.syqb.ebuymgr.pojo;

public class EasyBuyProductCategory {
    private Integer categoryid;

    private String categoryname;

    private Integer categoryparentid;

    private Integer categorytype;

    private String iconclass;

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname == null ? null : categoryname.trim();
    }

    public Integer getCategoryparentid() {
        return categoryparentid;
    }

    public void setCategoryparentid(Integer categoryparentid) {
        this.categoryparentid = categoryparentid;
    }

    public Integer getCategorytype() {
        return categorytype;
    }

    public void setCategorytype(Integer categorytype) {
        this.categorytype = categorytype;
    }

    public String getIconclass() {
        return iconclass;
    }

    public void setIconclass(String iconclass) {
        this.iconclass = iconclass == null ? null : iconclass.trim();
    }
}