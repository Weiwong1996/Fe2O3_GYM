package dao;

import java.util.List;

import entity.Course;
import entity.CourseAndCoach;
import entity.Page;

public interface CourseMapper {
	/**
	 * 删除课程通过couid
	 * @param couid
	 * @return int
	 */
    int deleteByPrimaryKey(Integer couid);
    /**
     * 添加课程
     * @param record
     * @return int
     */
    int insert(Course record);
    /**
     * 添加
     * @param record
     * @return int
     */
    int insertSelective(Course record);
    /**
     * 查询课程通过couid
     * @param couid
     * @return course
     */
    Course selectByPrimaryKey(Integer couid);
    /**
     * 查询所有
     * @return course集合
     */
    List<Course> selectAll();
    /**
     * 选择性更新课程
     * @param record
     * @return int
     */
    int updateByPrimaryKeySelective(Course record);
    /**
     * 更新课程通过couid
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Course record);
    /**
     * 查询所有课程和教练
     * @param page
     * @return 课程和教练集合
     */
    List<CourseAndCoach> selectCourseList(Page page);
    //查询课程总数
    int courseTotal();
}