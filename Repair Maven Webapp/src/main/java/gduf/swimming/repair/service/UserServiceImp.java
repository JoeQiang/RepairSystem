package gduf.swimming.repair.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gduf.swimming.repair.dao.UserDao;
import gduf.swimming.repair.model.User;

@Service
@Transactional
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao userDao;

	public User loginCheck(User user) {
		User u = userDao.findUserByName(user.getStunum());
		System.out.println(user);
		if (user.getUpwd().equals(u.getUpwd())) {
			return u;
		}
		return null;
	}

	public boolean register(User user) {
		User u = userDao.findUserByName(user.getStunum());
		if (u.getUid() == 0) {
			userDao.register(user);
			return true;
		} else {
			System.out.println(user);
			return false;
		}
	}

}
