package org.syqb.ebuymgr.pojo;

import java.util.Date;

public class EasyBuyUserAddress {
    private Integer addressid;

    private EasyBuyUser user;

    private String addressname;

    private Date addresscreatetime;

    private Integer isdefault;

    private String addressremark;

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public EasyBuyUser getUser() {
        return user;
    }

    public void setUser(EasyBuyUser user) {
        this.user = user;
    }

    public String getAddressname() {
        return addressname;
    }

    public void setAddressname(String addressname) {
        this.addressname = addressname;
    }

    public Date getAddresscreatetime() {
        return addresscreatetime;
    }

    public void setAddresscreatetime(Date addresscreatetime) {
        this.addresscreatetime = addresscreatetime;
    }

    public Integer getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(Integer isdefault) {
        this.isdefault = isdefault;
    }

    public String getAddressremark() {
        return addressremark;
    }

    public void setAddressremark(String addressremark) {
        this.addressremark = addressremark;
    }
}