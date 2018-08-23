package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.UsersMapper;
import entity.Users;

@Repository("usersDao")
public class UsersMapperImpl extends SqlSessionDaoSupport implements UsersMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public int deleteByPrimaryKey(Integer uid) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.UsersMapper.deleteByPrimaryKey", uid);
		return row;
	}

	public int insert(Users record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.UsersMapper.insert", record);
		return row;
	}

	public int insertSelective(Users record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.UsersMapper.insertSelective", record);
		return row;
	}

	public Users selectByPrimaryKey(Integer uid) {
		SqlSession sqlSession = this.getSqlSession();
		Users u = sqlSession.selectOne("dao.UsersMapper.selectByPrimaryKey", uid);
		return u;
	}

	public int updateByPrimaryKeySelective(Users record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.UsersMapper.updateByPrimaryKeySelective", record);
		return row;
	}

	public int updateByPrimaryKey(Users record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.UsersMapper.updateByPrimaryKey", record);
		return row;
	}
	@Override
	public int doLogin(Users user) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.selectOne("dao.UsersMapper.doLogin", user);
		return row;
	}
	@Override
	public Users getUidByUname(String uname) {
		SqlSession sqlSession = this.getSqlSession();
		Users u = sqlSession.selectOne("dao.UsersMapper.getUidByUname", uname);
		return u;
	}
	
	public List<Users> selectAllUsers() {
		SqlSession sqlSession = this.getSqlSession();
		List<Users> ulist = sqlSession.selectList("dao.UsersMapper.selectAllUsers");
		return ulist;
	}

}
