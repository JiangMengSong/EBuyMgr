package org.syqb.ebuymgr.service.product.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.mapper.ProductMapper;
import org.syqb.ebuymgr.pojo.Product;
import org.syqb.ebuymgr.service.product.ProductService;

import javax.annotation.Resource;
import java.util.List;

@Service("productService")
public class ProductServiceImpl implements ProductService {
    @Resource(name="")
    ProductMapper productMapper;

    @Override
    public List<Product> getEasyBuyProduct() {
        return productMapper.getEasyBuyProduct();
    }
}
