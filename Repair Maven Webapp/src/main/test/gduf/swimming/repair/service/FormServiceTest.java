package gduf.swimming.repair.service;

import gduf.swimming.repair.model.Form;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/applicationContext.xml")
public class FormServiceTest {
	@Autowired
	private FormService formService;

	@Test
	public void TestfindFormById() {
		Form form = formService.findFormById(1);
		System.out.println(form);
	}
}
