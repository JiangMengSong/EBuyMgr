package org.syqb.ebuymgr.service.order;

import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Order;

import java.util.List;

public interface OrderService {
    int getOrderCount();

    List<Order> getOrderByPage(Pages<Order> pages,Order order);
}
