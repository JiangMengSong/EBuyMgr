package org.syqb.ebuymgr.service.product.impl;

import org.syqb.ebuymgr.mapper.CategoryMapper;
import org.syqb.ebuymgr.pojo.Category;
import org.syqb.ebuymgr.service.product.CategoryService;

import javax.annotation.Resource;
import java.util.List;

public class CategoryServiceImpl implements CategoryService {
    @Resource(name = "")
    CategoryMapper categoryMapper;

    @Override
    public List<Category> getCategory() {
        return categoryMapper.getCategory();
    }
}
