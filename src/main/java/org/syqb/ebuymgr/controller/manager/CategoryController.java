package org.syqb.ebuymgr.controller.manager;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Category;
import org.syqb.ebuymgr.service.product.CategoryService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mgr/category")
public class CategoryController {
    @Resource(name = "categoryService")
    CategoryService categoryService;
    @RequestMapping(value = "/getCategory.html", produces = "text/html;charset=utf-8")
    public String getCategory() {
        return "redirect:/mgr/category/getCategory.html/1";
    }

    @RequestMapping(value = "/getCategory.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getCategory(HttpServletRequest request, Pages<Category> pages) {
        pages.setPageSize(2);
        pages.setTotalCount(categoryService.getCountByLevel(1));
        pages.setPageList(categoryService.getCategory(pages));
        if (pages.getPageSize() != null){
            Map<Integer,List<Category>> categoryLevel2 = new HashMap<Integer, List<Category>>();
            for (Category category : pages.getPageList()){
                categoryLevel2.put(category.getCategoryid(),categoryService.getCategoryByParentId(category.getCategoryid()));
            }
            request.setAttribute("categoryLevel2",categoryLevel2);
        }
        request.setAttribute("selUrl",2);
        request.setAttribute("pages", pages);
        return "manager/product/category/categoryList";
    }

    @RequestMapping(value = "/delCategory.html/{categoryId}", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delCategory(@PathVariable Integer categoryId){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (categoryId != null && categoryId > 0 && categoryService.delCategory(categoryId) > 0) result.put("flag",true);
        return result.toString();
    }

    @RequestMapping(value = "/toOperaCategory.html", produces = "text/html;charset=utf-8")
    public String toOperaCategory(HttpServletRequest request) {
        request.setAttribute("categoryList",categoryService.getCategory());
        return "manager/product/category/categoryOpera";
    }

    @RequestMapping(value = "/toOperaCategory.html/{categoryId}", produces = "text/html;charset=utf-8")
    public String toOperaCategory(HttpServletRequest request,@PathVariable Integer categoryId) {
        request.setAttribute("category",categoryService.getCategoryById(categoryId));
        request.setAttribute("categoryList",categoryService.getCategory());
        return "manager/product/category/categoryOpera";
    }

    @RequestMapping(value = "/doOperaCategory.html", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String doOperaCategory(Category category){
        JSONObject result = new JSONObject();
        result.put("flag",false);
        if (category != null ){
            if (category.getCategoryid() == null && categoryService.addCategory(category)>0) result.put("flag",true);
            if (category.getCategoryid() != null && categoryService.updateCategory(category)>0) result.put("flag",true);
        }
        return result.toString();
    }
}
