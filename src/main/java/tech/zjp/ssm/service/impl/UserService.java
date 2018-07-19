package tech.zjp.ssm.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tech.zjp.ssm.dao.UserMapper;
import tech.zjp.ssm.service.IUserService;
import tech.zjp.ssm.vo.User;

/**
 *
 * @Author: zhoujunpeng
 * @Date: 2018年7月11日 上午10:31:10
 */
@Service("userService")
public class UserService implements IUserService {

	@Resource
	private UserMapper userDao;
	
	@Override
	public User getUserById(Integer userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}

	@Override
	public List<User> getAllUsers(Map map) {
		return this.userDao.getAllUsers(map);
	}

	@Override
	public int getAllUsersCount() {
		return this.userDao.getAllUsersCount();
	}

	@Override
	public int addUser(User user) {
		return userDao.insert(user);
	}

	@Override
	public int updateUser(User user) {
		return userDao.updateByPrimaryKey(user);
	}

	@Override
	public int deleteUserById(Integer id) {
		return userDao.deleteByPrimaryKey(id);
	}


}
