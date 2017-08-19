package org.syqb.ebuymgr.service.product.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.CategoryMapper;
import org.syqb.ebuymgr.pojo.Category;
import org.syqb.ebuymgr.service.product.CategoryService;

import javax.annotation.Resource;
import java.util.List;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
    @Resource(name = "")
    CategoryMapper categoryMapper;

    @Override
    public List<Category> getCategory() {
        return categoryMapper.getCategory(null,null);
    }

    @Override
    public List<Category> getCategory(Pages<Category> pages) {
        return categoryMapper.getCategory((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize());
    }

    @Override
    public List<Category> getCategoryByParentId(Integer parentId) {
        return categoryMapper.getCategoryByParentId(parentId);
    }

    @Override
    public int getCountByLevel(Integer level) {
        return categoryMapper.getCountByLevel(level);
    }

    @Override
    public int delCategory(Integer categoryId) {
        return categoryMapper.delCategory(categoryId);
    }

    @Override
    public int addCategory(Category category) {
        return categoryMapper.addCategory(category);
    }

    @Override
    public Category getCategoryById(Integer categoryId) {
        return categoryMapper.getCategoryById(categoryId);
    }

    @Override
    public int updateCategory(Category category) {
        return categoryMapper.updateCategory(category);
    }


}
