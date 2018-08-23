package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.CourseMapper;
import entity.Course;
import entity.CourseAndCoach;
import entity.Page;
import service.CourseService;
@Service("courseService")
public class CourseServiceImpl implements CourseService {
	@Resource
	private CourseMapper courseDao;
	public boolean deleteByPrimaryKey(Integer couid) {
		return (courseDao.deleteByPrimaryKey(couid)>0?true:false);
	}

	public boolean insert(Course record) {
		return (courseDao.insert(record)>0?true:false);
	}

	public boolean insertSelective(Course record) {
		return (courseDao.insertSelective(record)>0?true:false);
	}

	public Course selectByPrimaryKey(Integer couid) {
		Course course = courseDao.selectByPrimaryKey(couid);
		return course;
	}

	public boolean updateByPrimaryKeySelective(Course record) {
		return (courseDao.updateByPrimaryKeySelective(record)>0?true:false);
	}

	public boolean updateByPrimaryKey(Course record) {
		return (courseDao.updateByPrimaryKey(record)>0?true:false);
	}

	public List<CourseAndCoach> selectCourseList(Page page) {
		return (courseDao.selectCourseList(page));
	}

	public int courseTotal() {
		return (courseDao.courseTotal());
	}


	public List<Course> selectAll() {
		return (courseDao.selectAll());
	}

}
