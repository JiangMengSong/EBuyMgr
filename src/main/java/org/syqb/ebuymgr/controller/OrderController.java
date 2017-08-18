package org.syqb.ebuymgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.syqb.ebuymgr.common.Pages;
import org.syqb.ebuymgr.pojo.Order;
import org.syqb.ebuymgr.pojo.OrderDetail;
import org.syqb.ebuymgr.service.order.OrderDetailService;
import org.syqb.ebuymgr.service.order.OrderService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/8/17.
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    @Resource(name = "orderService")
    OrderService orderService;

    @Resource(name = "orderDetailService")
    OrderDetailService orderDetailService;

    @RequestMapping(value = "/getOrder.html", produces = "text/html;charset=utf-8")
    public String getOrder() {
        return "redirect:/order/getOrder.html/1";
    }

    @RequestMapping(value = "/getOrder.html/{pageIndex}", produces = "text/html;charset=utf-8")
    public String getOrder(HttpServletRequest request, Pages<Order> pages,Order order) {
        pages.setPageSize(2);
        pages.setTotalCount(orderService.getOrderCount());
        pages.setPageList(orderService.getOrderByPage(pages,order));
        if (pages.getPageSize() != null){
            Map<Integer,List<OrderDetail>> orderDetailMap = new HashMap<Integer, List<OrderDetail>>();
            for (Order orders : pages.getPageList()){
                orderDetailMap.put(orders.getOrderid(),orderDetailService.getOrderDetailByOrderId(orders.getOrderid()));
            }
            request.setAttribute("orderDetailMap",orderDetailMap);
        }
        request.setAttribute("orderForm",order);
        request.setAttribute("selUrl",3);
        request.setAttribute("pages", pages);
        return "manager/order/orderList";
    }

}
