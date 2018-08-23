package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.CourseMapper;
import entity.Course;
import entity.CourseAndCoach;
import entity.Page;
@Repository("courseDao")
public class CourseMapperImpl extends SqlSessionDaoSupport implements CourseMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public int deleteByPrimaryKey(Integer couid) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.CourseMapper.deleteByPrimaryKey", couid);
		return row;
	}

	public int insert(Course record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CourseMapper.insert", record);
		return row;
	}

	public int insertSelective(Course record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CourseMapper.insertSelective", record);
		return row;
	}

	public Course selectByPrimaryKey(Integer couid) {
		SqlSession sqlSession = this.getSqlSession();
		Course course = sqlSession.selectOne("dao.CourseMapper.selectByPrimaryKey", couid);
		return course;
	}

	public int updateByPrimaryKeySelective(Course record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CourseMapper.updateByPrimaryKeySelective", record);
		return row;
	}

	public int updateByPrimaryKey(Course record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CourseMapper.updateByPrimaryKey", record);
		return row;
	}
	
	public List<CourseAndCoach> selectCourseList(Page page) {
		SqlSession sqlSession = this.getSqlSession();
		List<CourseAndCoach> clist =sqlSession.selectList("dao.CourseMapper.selectCourseList",page);
		return clist;		
	}
	
	public int courseTotal() {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.selectOne("dao.CourseMapper.courseTotal");
		return row;
	}
	 public List<Course> selectAll() {
		 SqlSession sqlSession = this.getSqlSession();
			List<Course> clist = sqlSession.selectList("dao.CourseMapper.selectAll");
			return clist;
		 
	 }

}
