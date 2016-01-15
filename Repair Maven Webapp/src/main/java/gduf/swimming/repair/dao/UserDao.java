package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.User;

public interface UserDao {

	public User findUserByUserName(final String username);

	public void register(User user);

}
