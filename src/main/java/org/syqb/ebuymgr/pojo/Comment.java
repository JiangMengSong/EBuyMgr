package org.syqb.ebuymgr.pojo;

import java.util.Date;

public class Comment {
    private Integer commentid;

    private String commentcontent;

    private Date commentdate;

    private String replycontent;

    private Date replydate;

    private User user;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentcontent) {
        this.commentcontent = commentcontent;
    }

    public Date getCommentdate() {
        return commentdate;
    }

    public void setCommentdate(Date commentdate) {
        this.commentdate = commentdate;
    }

    public String getReplycontent() {
        return replycontent;
    }

    public void setReplycontent(String replycontent) {
        this.replycontent = replycontent;
    }

    public Date getReplydate() {
        return replydate;
    }

    public void setReplydate(Date replydate) {
        this.replydate = replydate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}