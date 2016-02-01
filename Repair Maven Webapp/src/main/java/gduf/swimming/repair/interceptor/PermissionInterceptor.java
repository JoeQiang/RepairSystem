package gduf.swimming.repair.interceptor;

import gduf.swimming.repair.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PermissionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		System.out.println("----------权限前置拦截器-----------");
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			System.out.println("--------返回登录页------");
			response.sendRedirect(request.getContextPath() + "/login.do");
			return false;
		} else {
			System.out.println("--------------用户名：" + user.getUname()
					+ "--------------");
			return true;
		}
	}
}
