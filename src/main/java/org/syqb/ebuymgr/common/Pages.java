package org.syqb.ebuymgr.common;

import java.util.List;

public class Pages<T> {
    private Integer pageSize = 8; // 每页显示条数
    private Integer pageIndex = 1; // 当前页码
    private Integer totalCount; // 总条数
    private Integer totalPage; // 总页数
    private List<T> pageList; // 当前页显示的集合

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        if (pageSize > 0) this.pageSize = pageSize;
    }

    public Integer getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(Integer pageIndex) {
        if (pageIndex > 0) this.pageIndex = pageIndex;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
        if (totalCount < pageIndex) pageIndex = 1 ;
        if (this.totalCount % pageSize == 0) totalPage = this.totalCount / pageSize;
        else totalPage = this.totalCount / pageSize + 1;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public List<T> getPageList() {
        return pageList;
    }

    public void setPageList(List<T> pageList) {
        this.pageList = pageList;
    }
}
