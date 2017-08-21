package org.syqb.ebuymgr.pojo;

public class Category {
    private Integer categoryid;

    private String categoryname;

    private Integer categoryparentid;

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

    public String getIconclass() {
        return iconclass;
    }

    public void setIconclass(String iconclass) {
        this.iconclass = iconclass == null ? null : iconclass.trim();
    }
}