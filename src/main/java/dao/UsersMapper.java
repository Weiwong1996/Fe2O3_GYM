package dao;

import java.util.List;

import entity.Users;

public interface UsersMapper {
	/**
	 * 删除用户通过uid
	 * @param uid
	 * @return int
	 */
    int deleteByPrimaryKey(Integer uid);
    /**
     * 添加用户
     * @param record
     * @return int
     */
    int insert(Users record);
    int insertSelective(Users record);
    /**
     * 通过uid查询用户
     * @param uid
     * @return users
     */
    Users selectByPrimaryKey(Integer uid);
    /**
     * 更新用户
     * @param record
     * @return int
     */
    int updateByPrimaryKeySelective(Users record);
    /**
     * 更新用户
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Users record);
    /**
     * 登陆
     * @param user
     * @return int
     */
    int doLogin(Users user);
    /**
     * 通过unmae获得用户
     * @param uname
     * @return users
     */
    Users getUidByUname(String uname);
    /**
     * 查询所有用户
     * @return users集合
     */
    List<Users> selectAllUsers();
}