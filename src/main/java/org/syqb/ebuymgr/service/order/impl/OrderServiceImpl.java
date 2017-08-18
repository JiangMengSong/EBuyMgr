package org.syqb.ebuymgr.service.order.impl;

import org.springframework.stereotype.Service;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.mapper.OrderMapper;
import org.syqb.ebuymgr.pojo.Order;
import org.syqb.ebuymgr.service.order.OrderService;

import javax.annotation.Resource;
import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Resource(name="")
    OrderMapper orderMapper;

    @Override
    public int getOrderCount() {
        return orderMapper.getOrderCount();
    }

    @Override
    public List<Order> getOrderByPage(Pages<Order> pages,Order order) {
        return orderMapper.getOrderByPage((pages.getPageIndex() - 1) * pages.getPageSize(), pages.getPageSize(),order);
    }
}
