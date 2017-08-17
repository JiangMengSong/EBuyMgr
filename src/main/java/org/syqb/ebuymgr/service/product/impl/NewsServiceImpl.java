package org.syqb.ebuymgr.service.product.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.mapper.NewsMapper;
import org.syqb.ebuymgr.pojo.News;
import org.syqb.ebuymgr.service.product.NewsService;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
    @Resource(name = "")
    NewsMapper newsMapper;

    @Override
    public List<News> getNews() {
        return newsMapper.getNews();
    }
}
