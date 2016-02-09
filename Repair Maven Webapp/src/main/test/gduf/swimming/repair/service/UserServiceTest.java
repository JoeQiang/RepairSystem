package gduf.swimming.repair.service;

import gduf.swimming.repair.dao.FormDao;
import gduf.swimming.repair.dao.UserDao;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Page;

import org.apache.log4j.Logger;
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
	@Autowired
	private FormDao formDao;
	private Logger logger = Logger.getLogger(UserServiceTest.class);

	@Test
	public void testLoginCheck() {
		Page<Form> page = formDao.formlist(new Form(), 1, 2);
		logger.debug(page);
	}
}
