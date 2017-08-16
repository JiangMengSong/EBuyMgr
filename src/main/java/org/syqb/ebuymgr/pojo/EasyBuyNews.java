package org.syqb.ebuymgr.pojo;

public class EasyBuyNews {
    private Integer newsid;

    private String newstitle;

    private String newscontent;

    private String newscreatetime;

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle == null ? null : newstitle.trim();
    }

    public String getNewscontent() {
        return newscontent;
    }

    public void setNewscontent(String newscontent) {
        this.newscontent = newscontent == null ? null : newscontent.trim();
    }

    public String getNewscreatetime() {
        return newscreatetime;
    }

    public void setNewscreatetime(String newscreatetime) {
        this.newscreatetime = newscreatetime == null ? null : newscreatetime.trim();
    }
}