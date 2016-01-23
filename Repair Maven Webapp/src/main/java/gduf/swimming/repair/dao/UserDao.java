package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.User;

public interface UserDao {
	/**
	 * 根据学号查找
	 * @param username
	 * @return
	 */
	public User findUserByName(final int studentNum);

	/**
	 * 注册操作
	 * 
	 * @param user
	 */
	public void register(User user);

}
