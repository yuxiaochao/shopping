package com.shop.page;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.github.pagehelper.Page;

/**
 * 对Page<E>结果进行包装
 * <p/>
 * @version 3.3.0
 * @since 3.2.2
 */
@SuppressWarnings({"rawtypes", "unchecked"})
public class PageInfo<T> implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 当前页码
     */
    private int pageNum;
    /**
     * 每页的数量
     */
    private int pageSize;
    /**
     * 总记录数
     */
    private long total;
    /**
     * 总页数
     */
    private int pages;
    /**
     * 结果集
     */
    private List<T> list;
    /**
     * 是否为第一页
     */
    private boolean isFirstPage = false;
    /**
     * 是否为最后一页
     */
    private boolean isLastPage = false;


    public PageInfo() {
    }

    /**
     * 包装Page对象
     *
     * @param list
     */
    public PageInfo(List<T> list) {
        if (list instanceof Page) {
            Page page = (Page) list;
            this.pageNum = page.getPageNum();
            this.pageSize = page.getPageSize();

            this.pages = page.getPages();
            this.list = page;
            this.total = page.getTotal();
        } else if (list instanceof Collection) {
            this.pageNum = 1;
            this.pageSize = list.size();

            this.pages = 1;
            this.list = list;
            this.total = list.size();
        }
        if (list instanceof Collection) {
            //判断页面边界
            judgePageBoudary();
        }
    }

    /**
     * 判定页面边界
     */
    private void judgePageBoudary() {
        isFirstPage = pageNum == 1;
        isLastPage = pageNum == pages;
    }
    /**
     * 获取当前页码
     * @return
     */
    public int getPageNum() {
        return pageNum;
    }
    /**
     * 设置当前页码
     * @param pageNum
     */
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    /**
     * 获取每页的数量
     */
    public int getPageSize() {
        return pageSize;
    }
    /**
     * 设置每页的数量
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    /**
     * 获取总记录数
     */
    public long getTotal() {
        return total;
    }
    /**
     * 设置总记录数
     */
    public void setTotal(long total) {
        this.total = total;
    }
    /**
     * 获取总页数
     */
    public int getPages() {
        return pages;
    }
    /**
     * 设置总页数
     */
    public void setPages(int pages) {
        this.pages = pages;
    }
    /**
     * 获取结果集
     */
    public List<T> getList() {
        return list;
    }
    /**
     * 设置结果集
     */
    public void setList(List<T> list) {
        this.list = list;
    }
    /**
     * 获取是否为第一页并返回布尔值
     */
    public boolean isIsFirstPage() {
        return isFirstPage;
    }
    /**
     * 设置是否为第一页的布尔值
     */
    public void setIsFirstPage(boolean isFirstPage) {
        this.isFirstPage = isFirstPage;
    }
    /**
     * 获取是否为最后一页并返回布尔值
     */
    public boolean isIsLastPage() {
        return isLastPage;
    }
    /**
     * 设置是否为最后一页的布尔值
     */
    public void setIsLastPage(boolean isLastPage) {
        this.isLastPage = isLastPage;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PageInfo{");
        sb.append("pageNum=").append(pageNum);
        sb.append(", pageSize=").append(pageSize);
        sb.append(", total=").append(total);
        sb.append(", pages=").append(pages);
        sb.append(", list=").append(list);
        sb.append(", isFirstPage=").append(isFirstPage);
        sb.append(", isLastPage=").append(isLastPage);
        sb.append(", navigatepageNums=");
        sb.append('}');
        return sb.toString();
    }
}
