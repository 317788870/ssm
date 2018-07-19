package ssm;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import tech.zjp.ssm.service.impl.UserService;
import tech.zjp.ssm.vo.User;

/**
 *
 * @Author: zhoujunpeng
 * @Date: 2018年7月11日 上午10:32:57
 */
@RunWith(SpringJUnit4ClassRunner.class) //表示继承了这个类
@ContextConfiguration(locations= {"classpath:spring-mybatis.xml"})
public class TestMybatisDemo {

	private static Logger logger = Logger.getLogger(TestMybatisDemo.class);
	
	@Resource
	private UserService userService;

	@Test
	public void test() {
		User user = userService.getUserById(1);
		logger.info(user);
		logger.info("user转为json");
		logger.info(JSON.toJSONString(user));
	}
}
