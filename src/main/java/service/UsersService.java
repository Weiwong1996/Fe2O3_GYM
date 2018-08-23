package service;

import java.util.List;

import entity.Users;

public interface UsersService {
	/**
	 * 删除用户通过uid
	 * @param uid
	 * @return int
	 */
    boolean deleteByPrimaryKey(Integer uid);
    /**
     * 添加用户
     * @param record
     * @return int
     */
    int insert(Users record);
    /**
     * 选择性添加
     * @param uid
     * @return int
     */
    int insertSelective(Users record);
    /**
     * 查询用户
     * @param uid
     * @return users
     */
    Users selectByPrimaryKey(Integer uid);
    /**
     * 更新用户
     * @param record
     * @return boolean
     */
    boolean updateByPrimaryKeySelective(Users record);
    /**
     * 更新用户通过uid
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Users record);
    /**
     * 登陆
     * @param user
     * @return boolean
     */
    boolean doLogin(Users user);
    /**
     * 通过uname获得users
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