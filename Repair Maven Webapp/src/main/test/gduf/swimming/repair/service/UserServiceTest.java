package gduf.swimming.repair.service;

import gduf.swimming.repair.dao.UserDao;
import gduf.swimming.repair.model.User;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/applicationContext.xml")
public class UserServiceTest {

	/*
	 * @Autowired private UserService userService;
	 */
	@Autowired
	private UserDao userDao;

	@Test
	public void testLoginCheck() {
		userDao.findUserByName(131545236);
	}

	@Test
	public void testRegister() {
	}
}
