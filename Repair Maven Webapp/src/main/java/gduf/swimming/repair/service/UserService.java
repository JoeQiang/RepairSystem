package gduf.swimming.repair.service;

import gduf.swimming.repair.model.User;

public interface UserService {

	public User loginCheck(User user);

	public boolean register(User user);

	public User getUser(int uid);

	public int updateUser(User user);

	public int changePwd(User user);
}
