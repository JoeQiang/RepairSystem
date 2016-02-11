package gduf.swimming.repair.controller;

import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.service.OrderService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveOrder(ModelAndView mav, @RequestParam int uid,
			@RequestParam int fid, @RequestParam String ocontent) {
		Order order = new Order();
		order.setFid(fid);
		order.setUid(uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		System.out.println("uid：" + uid);
		order.setOcontent(ocontent);
		orderService.saveOrder(order);
		return null;
	}

	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public ModelAndView managerView(ModelAndView mav, @RequestParam int pageNum) {
		Page<Order> pager = orderService.getAllorders(pageNum);
		mav.addObject("pager", pager);
		mav.setViewName("omanger");
		return mav;
	}

	@ResponseBody
	@RequestMapping("/single")
	public Order getOrder(@RequestParam int oid) {
		return orderService.getOrder(oid);
	}

	@RequestMapping("/delete")
	public String deleteOrder(@RequestParam int oid) {
		orderService.delOrder(oid);
		return "redirect:/order/manager.do?pageNum=1";
	}

	@RequestMapping(value = "/addOrsp", method = RequestMethod.POST)
	public String addOrsp(ModelAndView mav, @RequestParam int oid,
			@RequestParam String orespont) {
		orderService.updateOrsp(oid, orespont);
		mav.addObject("msg", "添加反馈信息成功");
		return "redirect:/order/manager.do?pageNum=1";
	}
}
