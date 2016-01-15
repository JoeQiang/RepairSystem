package gduf.swimming.repair.service;

import gduf.swimming.repair.model.User;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/applicationContext.xml")
public class UserServiceTest {

	@Autowired
	private UserService userService;

	@Test
	public void testLoginCheck() {
		User user = new User();
		user.setUsername("manager2");
		user.setPassword("123");
		if (null != userService.loginCheck(user))
			System.out.println("------OK!!-----");
		else
			System.out.println("------Sorry!!-----");
	}

	@Test
	public void testRegister() {
		User user = new User();
		user.setUsername("manager");
		user.setPassword("123");
		System.out.println(userService.register(user));
	}
}
