package gduf.swimming.repair.controller;

import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.service.FormService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("form")
public class FormController {
	@Autowired
	private FormService formService;

	@RequestMapping(value = "/addNew", method = RequestMethod.GET)
	public ModelAndView addNewFormView() {
		ModelAndView mav = new ModelAndView("newform", "form", new Form());
		return mav;
	}

	@RequestMapping(value = "/addNew", method = RequestMethod.POST)
	public ModelAndView addNewForm(@ModelAttribute("form") Form form) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/form/addNew.do");
		return mav;

	}

	@ResponseBody
	@RequestMapping("/allArea")
	public List<Area> getAllArea() {
		return formService.getAllArea();
	}
}
