package org.syqb.ebuymgr.controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.News;
import org.syqb.ebuymgr.service.news.NewsService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/mgr/news")
public class NewsController {
    @Resource(name = "newsService")
    NewsService newsService;

    @RequestMapping(value = "/getNews.html", produces = "text/html;charset=utf-8")
    public String getNews() {
        return "redirect:/mgr/news/getNews.html/1";
    }

    @RequestMapping(value = "/getNews.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getNews(HttpServletRequest request, Pages<News> pages) {
        pages.setPageSize(6);
        pages.setTotalCount(newsService.getNewsCount());
        pages.setPageList(newsService.getNewsByPage(pages));
        request.setAttribute("pages", pages);
        return "manager/news/newsList";
    }


}
