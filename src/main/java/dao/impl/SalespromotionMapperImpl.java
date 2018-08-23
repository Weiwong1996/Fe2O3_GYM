package dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.SalespromotionMapper;
import entity.Salespromotion;

@Repository("salespromotionDao")
public class SalespromotionMapperImpl extends SqlSessionDaoSupport implements SalespromotionMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public int deleteByPrimaryKey(Integer sid) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.SalespromotionMapper.deleteByPrimaryKey", sid);
		return row;
	}

	public int insert(Salespromotion record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.SalespromotionMapper.insert", record);
		return row;
	}

	public int insertSelective(Salespromotion record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.SalespromotionMapper.insertSelective", record);
		return row;
	}

	public Salespromotion selectByPrimaryKey(Integer sid) {
		SqlSession sqlSession = this.getSqlSession();
		Salespromotion s = sqlSession.selectOne("dao.SalespromotionMapper.selectByPrimaryKey", sid);
		return s;
	}

	public int updateByPrimaryKeySelective(Salespromotion record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.SalespromotionMapper.updateByPrimaryKeySelective", record);
		return row;
	}

	public int updateByPrimaryKey(Salespromotion record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.SalespromotionMapper.updateByPrimaryKey", record);
		return row;
	}

	
	public List<Salespromotion> selectAllSale() {
		SqlSession sqlSession = this.getSqlSession();
		List<Salespromotion> slist = sqlSession.selectList("dao.SalespromotionMapper.selectAllSale");
		return slist;
	}

}
