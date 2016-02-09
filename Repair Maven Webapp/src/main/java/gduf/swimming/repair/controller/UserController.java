package gduf.swimming.repair.controller;

import gduf.swimming.repair.model.User;
import gduf.swimming.repair.service.UserService;
import gduf.swimming.repair.util.Constants;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;

@Controller
@SessionAttributes("user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginView() {

		return new ModelAndView("login", "command", new User());
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerView() {
		return new ModelAndView("register", "command", new User());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("command") @Valid User user) {
		ModelAndView mav = new ModelAndView();
		User u = userService.loginCheck(user);
		if (null == u) {
			mav.setViewName("login");
			mav.addObject("errorMsg", "用户名或密码错误");
		} else {
			if (u.getUrank() == Constants.RANK_ADMIN)
				mav.setViewName("redirect:/main/admin.do");
			else
				mav.setViewName("redirect:/main/custom.do");
			mav.addObject("user", u);
		}
		return mav;
	}

	/**
	 * 注册
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@Valid @ModelAttribute("command") User user) {
		ModelAndView mav = new ModelAndView();
		System.out.println(user);
		if (userService.register(user)) {
			mav.addObject("msg", "注册成功,请前往登录页进行登录操作！");
			mav.setViewName("show");
		} else {
			mav.setViewName("register");
			mav.addObject("errorMsg", "用户名已经被占用,请更换");
		}
		return mav;
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			session.removeAttribute("user");
		}
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		mav.addObject("errorMsg", "退出成功，请重新登录");
		mav.addObject("command", new User());
		return mav;
	};

	@RequestMapping(value = "/user/infomation", method = RequestMethod.GET)
	public ModelAndView updateView(@RequestParam String identity) {
		ModelAndView mav = new ModelAndView();
		if (!StringUtils.isNullOrEmpty(identity)) {
			int uid = Integer.parseInt(identity);
			User user = userService.getUser(uid);
			mav.addObject("user", user);
		}
		mav.setViewName("userInfo");
		return mav;
	}

	@RequestMapping(value = "/user/infomation", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("user") User user) {
		@SuppressWarnings("unused")
		int refect = userService.updateUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user/infomation.do?identity="
				+ user.getUid());
		mav.addObject("msg", "修改信息成功");
		return mav;
	}

	@RequestMapping(value = "/user/bcpwd", method = RequestMethod.GET)
	public ModelAndView changeBPwdView(HttpSession session) {
		User user = (User) session.getAttribute("user");
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", user);
		mav.setViewName("bpwd");
		return mav;
	};

	@RequestMapping(value = "/user/bcpwd", method = RequestMethod.POST)
	public ModelAndView changeBPwd(@ModelAttribute("user") User user) {
		@SuppressWarnings("unused")
		int refect = userService.changePwd(user);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "更改密码成功");
		mav.setViewName("bpwd");
		return mav;
	}
}
