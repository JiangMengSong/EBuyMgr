package org.syqb.ebuymgr.service.product;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Order;
import org.syqb.ebuymgr.pojo.Product;
import org.syqb.ebuymgr.pojo.UserAddress;

import java.util.List;

public interface ProductService {
    List<Product> getProduct(Pages<Product> pages, Integer categoryId);

    int getProductCount(Integer categoryId);

    Product getProById(int id);

    int insert(Product product);

    int delProduct(int id);

    List<UserAddress> selectByUserid(Integer userid);

    UserAddress getAddress(Integer addid);

    int insertOrder(Order order);
}
