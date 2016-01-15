package gduf.swimming.repair.service;

import gduf.swimming.repair.model.User;

public interface UserService {

	public User loginCheck(User user);

	public boolean register(User user);

}
