package service;

import java.util.List;

import entity.Course;
import entity.CourseAndCoach;
import entity.Page;

public interface CourseService {
    boolean deleteByPrimaryKey(Integer couid);
    //添加课程
    boolean insert(Course record);
    //选择添加课程
    boolean insertSelective(Course record);
    //根据couid查询课程  返回值Course
    Course selectByPrimaryKey(Integer couid);

    boolean updateByPrimaryKeySelective(Course record);

    boolean updateByPrimaryKey(Course record);
    //对课程进行分页操作
    List<CourseAndCoach> selectCourseList(Page page);
    //获得总课程数
    int courseTotal();
    
    List<Course> selectAll();
}