package tech.zjp.ssm.dao;

import java.util.List;
import java.util.Map;

import tech.zjp.ssm.vo.User;

/**
 *
 * @Author: zhoujunpeng
 * @Date: 2018年7月11日 上午9:56:39
 */
public interface UserMapper {

	
	int insert(User record);
	
	//int insertSelective(User record);

	int deleteByPrimaryKey(Integer id);

	//int updateByPrimaryKeySelective(User record);
	int updateByPrimaryKey(User record);

	User selectByPrimaryKey(Integer id);

	List<User> getAllUsers(Map map);
	
	int getAllUsersCount();
	

	
}
