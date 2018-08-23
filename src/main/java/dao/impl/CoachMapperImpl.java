package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.CoachMapper;
import entity.Coach;
@Repository("coachDao")
public class CoachMapperImpl extends SqlSessionDaoSupport implements CoachMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public int deleteByPrimaryKey(Integer cid) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.CoachMapper.deleteByPrimaryKey", cid);
		return row;
	}
//插入全部字段
	public int insert(Coach record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CoachMapper.insert", record);
		return row;
	}
//有些选择性的插入
	public int insertSelective(Coach record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CoachMapper.insertSelective", record);
		return row;
	}

	public Coach selectByPrimaryKey(Integer cid) {
		SqlSession sqlSession = this.getSqlSession();
		Coach coach =sqlSession.selectOne("dao.CoachMapper.selectByPrimaryKey", cid);
		return coach;
	}

	public int updateByPrimaryKeySelective(Coach record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CoachMapper.updateByPrimaryKeySelective", record);
		return row;
	}

	public int updateByPrimaryKey(Coach record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CoachMapper.updateByPrimaryKey", record);
		return row;
	}

	public List<Coach> selectAllCoach() {
		SqlSession sqlSession = this.getSqlSession();
		List<Coach> clist =sqlSession.selectList("dao.CoachMapper.selectAllCoach");
		return clist;
	}
	@Override
	public Coach getPriceByName(String cname) {
		SqlSession sqlSession = this.getSqlSession();
		Coach coach =sqlSession.selectOne("dao.CoachMapper.getPriceByName", cname);
		return coach;
	}
	@Override
	public Coach getCidByName(String cname) {
		SqlSession sqlSession = this.getSqlSession();
		Coach coach =sqlSession.selectOne("dao.CoachMapper.getCidByName", cname);
		return coach;
	}

}
