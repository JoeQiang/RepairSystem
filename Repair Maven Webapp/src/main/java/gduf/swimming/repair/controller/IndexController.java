package gduf.swimming.repair.controller;

import gduf.swimming.repair.service.FormService;

import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("main")
public class IndexController {
	@Autowired
	private FormService formService;

	@RequestMapping("/admin")
	public ModelAndView adminView(ModelAndView mav) {
		Map<String, Object> map = formService.countForm();
		mav.addAllObjects(map);
		mav.setViewName("main");
		return mav;
	}

	@RequestMapping("/custom")
	public String customView() {
		return "custom";
	}
}
