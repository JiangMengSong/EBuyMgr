package org.syqb.ebuymgr.service.news.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.NewsMapper;
import org.syqb.ebuymgr.pojo.News;
import org.syqb.ebuymgr.service.news.NewsService;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
    @Resource(name = "")
    NewsMapper newsMapper;

    @Override
    public List<News> getNewsByDate() {
        return newsMapper.getNewsByPage(0, 10);
    }

    @Override
    public List<News> getNewsByPage(Pages<News> pages) {
        if (null == pages) return null;
        return newsMapper.getNewsByPage((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize());
    }

    @Override
    public int getNewsCount() {
        return newsMapper.getNewsCount();
    }
}
