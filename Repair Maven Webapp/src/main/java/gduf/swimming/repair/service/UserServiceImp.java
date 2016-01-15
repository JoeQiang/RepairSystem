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
		User u = userDao.findUserByUserName(user.getUsername());
		System.out.println(user);
		if (user.getPassword().equals(u.getPassword())) {
			return u;
		}
		return null;
	}

	public boolean register(User user) {
		User u = userDao.findUserByUserName(user.getUsername());
		if (u.getId() == 0) {
			userDao.register(user);
			return true;
		} else {
			System.out.println(user);
			return false;
		}
	}

}
