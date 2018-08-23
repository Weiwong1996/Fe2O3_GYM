package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.UsersMapper;
import entity.Users;
import service.UsersService;
@Service("usersService")
public class UsersServiceImpl implements UsersService {
	@Resource
	private UsersMapper usersDao;
	public boolean deleteByPrimaryKey(Integer uid) {
		return (usersDao.deleteByPrimaryKey(uid)>0?true:false);
	}

	public int insert(Users record) {
		return (usersDao.insert(record));
	}

	public int insertSelective(Users record) {
		return (usersDao.insertSelective(record));
	}

	public Users selectByPrimaryKey(Integer uid) {
		return (usersDao.selectByPrimaryKey(uid));
	}

	public boolean updateByPrimaryKeySelective(Users record) {
		return (usersDao.updateByPrimaryKeySelective(record)>0?true:false);
	}

	public int updateByPrimaryKey(Users record) {
		return (usersDao.updateByPrimaryKey(record));
	}

	@Override
	public boolean doLogin(Users user) {
		return (usersDao.doLogin(user)>0?true:false);
	}

	@Override
	public Users getUidByUname(String uname) {
		return (usersDao.getUidByUname(uname));
	}

	@Override
	public List<Users> selectAllUsers() {
		return (usersDao.selectAllUsers());
	}

}
