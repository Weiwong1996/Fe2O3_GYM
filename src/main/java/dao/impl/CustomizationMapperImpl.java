package dao.impl;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.CustomizationMapper;
import entity.Customization;

@Repository("customizationDao")
public class CustomizationMapperImpl extends SqlSessionDaoSupport implements CustomizationMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public int deleteByPrimaryKey(Integer cusid) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.CustomizationMapper.deleteByPrimaryKey", cusid);
		return row;
	}

	public int insert(Customization record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CustomizationMapper.insert", record);
		return row;
	}

	public int insertSelective(Customization record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CustomizationMapper.insertSelective", record);
		return row;
	}

	public Customization selectByPrimaryKey(Integer cusid) {
		SqlSession sqlSession = this.getSqlSession();
		Customization c = sqlSession.selectOne("dao.CustomizationMapper.selectByPrimaryKey", cusid);
		return c;
	}

	public int updateByPrimaryKeySelective(Customization record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CustomizationMapper.updateByPrimaryKeySelective", record);
		return row;
	}

	public int updateByPrimaryKey(Customization record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CustomizationMapper.updateByPrimaryKey", record);
		return row;
	}
	@Override
	public List<Customization> selectAllCus() {
		SqlSession sqlSession = this.getSqlSession();
		List<Customization> clist = sqlSession.selectList("dao.CustomizationMapper.selectAllCus");
		return clist;
	}
	@Override
	public  List<Customization> selectByUid(Integer uid) {
		SqlSession sqlSession = this.getSqlSession();
		List<Customization> clist= sqlSession.selectList("dao.CustomizationMapper.selectByUid", uid);
		return clist;
	}

}
