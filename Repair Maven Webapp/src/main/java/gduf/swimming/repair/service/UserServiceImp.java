package gduf.swimming.repair.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gduf.swimming.repair.dao.UserDao;
import gduf.swimming.repair.model.User;
import gduf.swimming.repair.util.MD5Utils;

@Service
@Transactional
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao userDao;

	public User loginCheck(User user) {
		User u = userDao.findUserByName(user.getStunum());
		if (MD5Utils.MD5(user.getUpwd()).equals(u.getUpwd())) {
			return u;
		}
		return null;
	}

	public boolean register(User user) {
		User u = userDao.findUserByName(user.getStunum());
		if (u.getUid() == 0) {
			user.setUrank(1);
			user.setUpwd(MD5Utils.MD5(user.getUpwd()));
			userDao.register(user);
			return true;
		} else {
			System.out.println(user);
			return false;
		}
	}

	public User getUser(int uid) {
		return userDao.findUserById(uid);
	}

	public int updateUser(User user) {
		return userDao.update(user);
	}

	public int changePwd(User user) {
		// TODO Auto-generated method stub
		return userDao.chagePwd(user);
	}

}
