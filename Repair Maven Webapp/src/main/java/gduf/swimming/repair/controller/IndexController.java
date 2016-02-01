package gduf.swimming.repair.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class IndexController {
	@RequestMapping("/admin")
	public String adminView() {
		return "main";
	}

	@RequestMapping("/custom")
	public String customView() {
		return "custom";
	}
}
