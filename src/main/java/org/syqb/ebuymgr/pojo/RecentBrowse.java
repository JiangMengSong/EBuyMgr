package org.syqb.ebuymgr.pojo;

import java.util.Date;

public class RecentBrowse {
    private Integer recentbrowseid;

    private User user;

    private org.syqb.ebuymgr.pojo.Product product;

    private Date recentbrowsedate;

    public Integer getRecentbrowseid() {
        return recentbrowseid;
    }

    public void setRecentbrowseid(Integer recentbrowseid) {
        this.recentbrowseid = recentbrowseid;
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

    public Date getRecentbrowsedate() {
        return recentbrowsedate;
    }

    public void setRecentbrowsedate(Date recentbrowsedate) {
        this.recentbrowsedate = recentbrowsedate;
    }
}