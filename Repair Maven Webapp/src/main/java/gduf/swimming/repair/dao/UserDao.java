package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.User;

public interface UserDao {
	/**
	 * 根据学号查找
	 * 
	 * @param username
	 * @return
	 */
	public User findUserByName(int studentNum);

	/**
	 * 注册操作
	 * 
	 * @param user
	 */
	public void register(User user);

	public User findUserById(int uid);

	public int update(User user);

	public int chagePwd(User user);
}
