package org.syqb.ebuymgr.service.product;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Product;

import java.util.List;

public interface ProductService {
    List<Product> getProduct(Pages<Product> pages,Integer categoryId);

    int getProductCount(Integer categoryId);
}
