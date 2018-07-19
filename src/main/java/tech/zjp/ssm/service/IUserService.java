package tech.zjp.ssm.service;

import java.util.List;
import java.util.Map;

import tech.zjp.ssm.vo.User;

/**
 *
 * @Author: zhoujunpeng
 * @Date: 2018年7月11日 上午10:30:16
 */
public interface IUserService {
	/**
	 * 根据id查询用户
	 * @param userId
	 * @return
	 */
	User getUserById(Integer userId);
	
	/**
	 * 查询所有用户
	 * @return
	 */
	List<User> getAllUsers(Map map);
	
	/**
	 * 获取所有数据
	 * @return
	 */
	int getAllUsersCount();
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	int addUser(User user);
	
	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	int updateUser(User user);
	
	/**
	 * 根据id删除一个用户
	 * @param id
	 * @return
	 */
	int deleteUserById(Integer id);
}
